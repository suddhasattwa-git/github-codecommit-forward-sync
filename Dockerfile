FROM alpine:3.10

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh git-lfs

RUN git lfs install

COPY mirror.sh /mirror.sh
COPY setup-ssh.sh /setup-ssh.sh
RUN chmod +x mirror.sh
ENTRYPOINT ["/mirror.sh"]
