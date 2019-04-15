FROM golang:1.11

WORKDIR $GOPATH/src/github.com/rewenset/go-docker
COPY . .
RUN go install -v ./...
EXPOSE 8000

CMD ["go-docker"]