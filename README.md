# Multi-stage builds

## Dockerfile with build dependencies

docker build -t hello-world .
docker images | grep hello

docker run --rm hello-world

 ## Dockerfile using multi-stage build

docker build -t hello-world:msb -f Dockerfile.msb .
docker images | grep hello

docker run --rm hello-world:msb

## Cleanup
docker container prune
docker image prune
