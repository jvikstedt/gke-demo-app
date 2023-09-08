FROM golang:latest

WORKDIR /app

# In case dependencies added
# COPY go.mod go.sum ./
COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /gke-demo-app

EXPOSE 3000

CMD ["/gke-demo-app"]
