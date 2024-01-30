# Use the official Golang base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /home/tecblic/Music/final_go/go_microservice

# Copy the local code to the container
COPY . .

# Download dependencies
RUN go mod download

# Build the application
RUN go build -o main .

# Expose the port the application runs on
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
