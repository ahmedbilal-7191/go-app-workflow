FROM golang:1.21 as builder

WORKDIR /app
COPY . .
RUN go build -o app .

FROM debian:bullseye-slim
COPY --from=builder /app/app /app
CMD ["/app/app"]
