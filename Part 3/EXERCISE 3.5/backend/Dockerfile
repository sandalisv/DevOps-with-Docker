FROM golang:1.16-alpine

WORKDIR /app

COPY . /app

RUN go build

# Create a non-root user
RUN adduser -D myuser

# Set the ownership of the working directory to the non-root user
RUN chown -R myuser:myuser /app

EXPOSE 8080

# Start the app as the non-root user
USER myuser

CMD ["./server"]
