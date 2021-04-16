FROM golang:1.16.3-buster AS build

WORKDIR /src

COPY . .

RUN go build .
