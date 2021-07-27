# docker-alpine-ftp-server
[![Docker Automated build](https://img.shields.io/docker/automated/delfer/alpine-ftp-server.svg)](https://hub.docker.com/r/solarluxit/docker-ftp/)
Small and flexible docker image with vsftpd server

## Usage
```
docker run -d \
    -p 21:21 \
    -e USERS="one|1234" \
    -e ADDRESS=ftp.site.domain \
    delfer/alpine-ftp-server
```

## Configuration

Environment variables:
- `USERS` - space and `|` separated list (optional, default: `ftp|alpineftp`)
  - format `name1|password1|[folder1][|uid1] name2|password2|[folder2][|uid2]`
- `ADDRESS` - external address witch clients can connect passive ports (optional)

## USERS examples

- `user|password foo|bar|/home/foo`
- `user|password|/home/user/dir|10000`
- `user|password||10000`
