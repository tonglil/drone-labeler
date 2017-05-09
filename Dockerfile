FROM golang:alpine

RUN apk add --no-cache bash git

RUN go get -u github.com/github/hub
RUN go get -u github.com/tonglil/labeler

COPY script.sh /bin/

RUN chmod +x /bin/script.sh

ENTRYPOINT /bin/script.sh
