

.PHONY: build
build:
	CGO_ENABLED=0 go build ./cmd/traitor

.PHONY: pack
pack:
	go run ./cmd/pack

.PHONY: install
install:
	CGO_ENABLED=0 go install -ldflags "-X github.com/liamg/traitor/version.Version=`git describe --tags`" ./cmd/traitor

.PHONY: test
test:
	go test ./... -race -cover

# 1st comment
# 2nd comment
# 3rd comment
# Another comment in branch1
# Yet Another comment in branch1
# And another one comment in branch1
