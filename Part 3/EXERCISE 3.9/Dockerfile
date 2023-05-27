# Stage 1
FROM golang:1.16 as builder

WORKDIR /app

COPY . .

RUN go build -o server .

# Stage 2
FROM scratch

COPY --from=builder /app/server /server

ENTRYPOINT ["/server"]
