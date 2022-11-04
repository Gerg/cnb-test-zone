# cnb-test-zone
Test Dockerfile for Cloud Foundry / Cloud Native Buildpack

This was used for developing the buildpack shim without having to constantly
re-upload the buildpack shim and restage an app.

## Usage

### Normally
```
$ docker build -t v2-cnb-ruby-buildpack . && docker run v2-cnb-ruby-buildpack
```

This will run the buildpack shim on dora.

### To Debug
```
$ docker build -t v2-cnb-ruby-buildpack . && docker run --env 'BP_SLEEP=1' v2-cnb-ruby-buildpack
```
in another terminal, find the container id
```
$ docker ps
```
and open up a shell in it
```
$ docker exec -it d73ae2ac22ed /bin/bash
```
