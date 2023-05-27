# Use an official Golang runtime as a parent image
FROM golang:1.16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the app, create a non-root user, set ownership, expose port, and start the app
RUN go build && \
    adduser -D myuser && \
    chown -R myuser:myuser /app

# Set the ownership of the working directory to the non-root user
USER myuser

# Expose port 8080
EXPOSE 8080

CMD ["./server"]


