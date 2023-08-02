# docker-grpc-health-probe
Scratch-based image with just grpc-health-prove

[https://github.com/amothic/docker-grpc-health-probe](https://github.com/amothic/docker-grpc-health-probe)

## Usage
```console
$ docker run --rm amothic/grpc-health-probe -addr=localhost:5000

$ docker run --rm amothic/grpc-health-probe -addr=host.docker.internal:5000
```

## License
[MIT License](LICENSE)
