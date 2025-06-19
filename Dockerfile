# Use a base image
FROM golang:1.24-alpine

# Set working directory
WORKDIR /go-fibonacci-api

# Copy files
COPY go.mod ./
RUN go mod tidy

COPY . .

RUN go build -o main .

# Define default command
CMD ["./main"]