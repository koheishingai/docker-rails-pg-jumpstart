This is the Docker image for Nitrous.IO rails jumpstart container. This image
requires a Postgres container running with port 5432 exposed.

To run:

```
docker build -t nitrousio/rails-pg-jumpstart:latest .
docker run -i -t -d -e __HOST=172.17.42.1 nitrousio/rails-pg-jumpstart:latest
docker run -t -d -p 5432:5432 postgres:9.3
docker logs <CID>
docker ps <CID>
ssh -p <port> action@<ip>
```

Enter the password `docker logs` command displays.
