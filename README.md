# docker-icecc

Distributed compiler

## Usage

To start the icecc daemon, simply run:

```sh
docker run -d jrjang/docker-icecc
```

If want to start the icecc-scheduler together, simply run:

```sh
docker run -d -e ICECC_ENABLE_SCHEDULER=1 jrjang/docker-icecc
```
