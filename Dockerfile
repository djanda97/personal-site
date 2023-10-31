FROM golang:1.21
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY *.go ./
COPY public/ ./public/
RUN CGO_ENABLED=0 GOOS=linux go build -o /personal-site
EXPOSE 8080
CMD ["/personal-site"]
