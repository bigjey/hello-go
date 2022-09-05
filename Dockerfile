FROM golang:1.19

RUN mkdir /app

WORKDIR /app

COPY . ./

RUN go build -o main .

EXPOSE 8080

CMD ["/app/main"]