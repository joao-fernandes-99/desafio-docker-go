FROM golang:alpine3.19 AS builder

WORKDIR /usr/src/app

COPY main.go .

COPY go.mod .

RUN go build

FROM hello-world:latest
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app .

ENTRYPOINT ["./main"]