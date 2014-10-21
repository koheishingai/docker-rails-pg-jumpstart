#!/bin/bash

if [ -d /home/action/app ]; then
  app_path=/home/action/app
  cd $app_path

  if [ -d /volumes/workspace ]; then
    chown action:action /volumes/workspace
    rm -f /home/action/workspace
    ln -s /volumes/workspace /home/action/workspace
    chown -h action:action /home/action/workspace

    app_path=/home/action/workspace/app
    if [[ -e $app_path ]]; then
      i=2
      while [[ -e "$app_path"-$i ]]; do
        let i++
      done
      app_path="$app_path"-$i
    fi
    mv /home/action/app $app_path
    cd $app_path
  fi

  i=0
  while ! psql -h $__HOST -U postgres -c 'select 1' > /dev/null 2> /dev/null; do
    if [ $i -ge 60 ]; then
      exit 1
    fi
    sleep 0.5
    let i++
  done

  su action -l -c /bin/bash -c 'cd '"$app_path"' && rake db:create db:migrate'
fi
