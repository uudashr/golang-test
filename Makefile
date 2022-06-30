.DEFAULT_GOAL = build
.PHONY: FORCE

.PHONY: build
build: Dockerfile.go116 Dockerfile.go117 Dockerfile.go118
	@echo Building
	@docker build -t uudashr/golang-test:1.16 -f Dockerfile.go116 .
	@docker build -t uudashr/golang-test:1.17 -f Dockerfile.go117 .
	@docker build -t uudashr/golang-test:1.18 -f Dockerfile.go118 .

.PHONY: push
push:
	@echo Pushing to hub
	@docker push uudashr/golang-test:1.16
	@docker push uudashr/golang-test:1.17
	@docker push uudashr/golang-test:1.18