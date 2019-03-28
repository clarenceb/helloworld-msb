FROM golang:1.8

WORKDIR /src/
COPY hello-world.go .
RUN go build -o app .

CMD ["./app"]
