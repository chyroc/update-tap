FROM golang:1.17
RUN apk add git 

COPY . /home/src
WORKDIR /home/src
RUN go build -o /bin/action ./cmd/goaction

ENTRYPOINT [ "/bin/action" ]