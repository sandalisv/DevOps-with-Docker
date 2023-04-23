# Use an official Golang runtime as a parent image
FROM golang:1.16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the app
RUN go build

# Expose port 8080
EXPOSE 8080

# Start the app
CMD ["./server"]
