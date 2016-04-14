# docker.xrdp
Image with debian, lxde, xrdp, lxterminal, iceweasel

## start the container
```
docker run -d --name xrdp -h xrdp -p 3389:3389 twhtanghk/docker.xrdp
```

## connect via remote desktop client
```
login with username 'user' and password 'password'
```