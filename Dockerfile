FROM golang:1.11 as builder
WORKDIR $GOPATH/src/github.com/rewenset/go-docker
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /go/bin/go-docker .

FROM scratch 
WORKDIR /app
COPY --from=builder /go/bin/go-docker .
EXPOSE 8000
CMD ["./go-docker"]