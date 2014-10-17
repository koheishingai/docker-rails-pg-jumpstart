#!/bin/bash

if [ -d /volumes/workspace ]; then
  chown action:action /volumes/workspace
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
fi
