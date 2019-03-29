# Multi-stage builds

Demo of multi-stage builds using a simple Go app.

## Prep

* Requires golang if running the app without containers

## (Optional) Run app directly without containers

```sh
go run hello-world.go
go build hello-world.go
./hello-world

ls -lh hello-world
```

## Dockerfile with build dependencies

Image with build dependencies inside is large.

```sh
docker build -t hello-world .
docker images | grep hello

docker run --rm hello-world
```

## Dockerfile using multi-stage build

Multi-stage build reduced the final image significantly.

```sh
docker build -t hello-world:msb -f Dockerfile.msb .
docker images | grep hello

docker run --rm hello-world:msb
```

## Cleanup

```sh
rm hello-world
docker container prune
docker image prune
```
