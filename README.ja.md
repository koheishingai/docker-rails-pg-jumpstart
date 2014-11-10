Nitrous.IO - rails高速スタートコンテナーのためのDockerイメージです。
5443ポート使用のPostgresコンテナーを必要とします。

実行方法:

```
docker build -t nitrousio/rails-pg-jumpstart:latest .
docker run -i -t -d -e __HOST=172.17.42.1 nitrousio/rails-pg-jumpstart:latest
docker run -t -d -p 5432:5432 postgres:9.3
docker logs <CID>
docker ps <CID>
ssh -p <port> action@<ip>
```

パスワードと`docker logs`コマンドをディスプレイに入力します。

### その他の言語

[English](https://github.com/nitrous-io/autoparts/blob/master/README.md)