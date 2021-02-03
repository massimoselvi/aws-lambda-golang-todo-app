.PHONY: build clean deploy

clean:
	rm -rf ./build

build:
	export GOARCH=amd64
	export GOOS=linux
	env GOOS=linux go build -ldflags="-s -w" -o build/create handlers/create/main.go
	env GOOS=linux go build -ldflags="-s -w" -o build/delete handlers/delete/main.go
	env GOOS=linux go build -ldflags="-s -w" -o build/index handlers/index/main.go
	env GOOS=linux go build -ldflags="-s -w" -o build/show handlers/show/main.go
	env GOOS=linux go build -ldflags="-s -w" -o build/update handlers/update/main.go


deploy: clean build
	./bin/deploy 
