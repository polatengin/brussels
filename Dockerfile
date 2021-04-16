FROM golang:1.16.3-buster AS build

WORKDIR /src

COPY . .

RUN go build .

FROM gcr.io/distroless/static AS runtime

WORKDIR /app

COPY --from=build /src/brussels .

ENTRYPOINT [ "/app/brussels" ]
