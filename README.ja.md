Nitrous.IO - rails�����X�^�[�g�R���e�i�[�̂��߂�Docker�C���[�W�ł��B
5443�|�[�g�g�p��Postgres�R���e�i�[��K�v�Ƃ��܂��B

���s���@:

```
docker build -t nitrousio/rails-pg-jumpstart:latest .
docker run -i -t -d -e __HOST=172.17.42.1 nitrousio/rails-pg-jumpstart:latest
docker run -t -d -p 5432:5432 postgres:9.3
docker logs <CID>
docker ps <CID>
ssh -p <port> action@<ip>
```

�p�X���[�h��`docker logs`�R�}���h���f�B�X�v���C�ɓ��͂��܂��B

### ���̑��̌���

[English](https://github.com/nitrous-io/autoparts/blob/master/README.md)