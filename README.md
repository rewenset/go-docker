Docker Containers for Golang servers
==
Building the image
```sh
$ docker build -t go-server .
```
Running the image
```sh
$ docker run -p 8000:8000 go-server
```