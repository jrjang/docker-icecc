# docker-icecc

Distributed compiler

## Usage

To start the icecc daemon, simply run:

```sh
docker run -d --net=host -p ::10245/tcp -p ::8765/tcp -p ::8766/tcp -p ::8765/udp jrjang/docker-icecc
```

If want to start the icecc-scheduler together, simply run:

```sh
docker run -d -e ICECC_ENABLE_SCHEDULER=1 --net=host -p ::10245/tcp -p ::8765/tcp -p ::8766/tcp -p ::8765/udp jrjang/docker-icecc
```
