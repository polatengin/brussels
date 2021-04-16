# to run the development environment
docker run --rm -it -v ${PWD}:/src --workdir "/src" golang:1.16.3-buster

# to create the project
go mod init github.com/${ACCOUNT_NAME}/${PROJECT_NAME}

# to run the project
go run .

# to build the project
go build .

# to build the runtime environment
docker build --target runtime -t ${PROJECT_NAME} .

# to run the runtime environment
docker run --rm -it ${PROJECT_NAME}
