# Golang Test

Docker image to run go test inside container. This enable us to execute test on various golang versions.

## Build
```
docker build -t uudashr/golang-test:1.19 -f Dockerfile.go119 .
```

## Run the test
```
docker run --rm -i -v <go-source-dir>:/src uudashr/golang-test:1.19
```