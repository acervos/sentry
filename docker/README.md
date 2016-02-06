# Docker Image for Configs

To build
```sh
docker build -t sentry-config .
```
To generate configs
```sh
docker run -v $PWD:/config -it sentry-config
```
