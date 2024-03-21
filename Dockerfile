FROM hello-world
WORKDIR /usr/src/app

COPY main .

ENTRYPOINT ["./main"]