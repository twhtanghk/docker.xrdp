# docker.xrdp
Dockerfile to create image with debian, lxde, xrdp

## start the container
```
docker run -d --name xrdp -h xrdp -p 3389:3389 twhtanghk/docker.xrdp
```

## connect via remote desktop client
```
login with username 'myroot' and password 'password'
```