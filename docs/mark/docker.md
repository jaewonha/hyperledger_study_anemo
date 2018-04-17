# 도커 로그인
```
$ docker login //docker hub 로그인
$ docker pull ubuntu:14.04 //ubuntu 14.04 받기.
$ docker images //정상적으로 받아졌나 내 로컬 레포에서 이미지 확인
```

# 도커 이미지 생성 및 저장소 올리기
```
# 현재 디렉토리를 기준으로 빌드
$ mkdir sample-ubuntu
$ cd sample-ubuntu
$ vim Dockerfile
# dockerfile 에 내용 넣기
$ docker build --tag hurest/sample-ubuntu:0.1 .
$ docker push hurest/sample-ubuntu:0.1
```

# 생성한 우분투 실행
```
$ docker run --rm -i -t hurest/sample-ubuntu:0.1 /bin/bash
```