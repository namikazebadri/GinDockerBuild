FROM golang:1.15.11-alpine3.13

ENV GIN_HOME=/app

RUN mkdir -p $GIN_HOME

WORKDIR $GIN_HOME

ADD . $GIN_HOME

RUN go build main.go

EXPOSE 8080

ENTRYPOINT ["./docker-entrypoint.sh"]