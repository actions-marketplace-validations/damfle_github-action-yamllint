FROM alpine:latest

RUN apk --update --no-cache add yamllint

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
