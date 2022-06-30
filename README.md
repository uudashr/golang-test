# Golang Test

Docker image to run go test inside container. This enable us to execute test on various golang versions.

## Build
```
docker build -t uudashr/golang-test:1.18 -f Dockerfile.go118 .
```

## Run the test
```
docker run --rm -i -v <go-source-dir>:/src uudashr/golang-test:1.18
```