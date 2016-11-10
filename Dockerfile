FROM alpine:3.4

RUN apk --update add --no-cache python py-pip && \
    pip install --no-cache-dir elasticsearch-curator==3.5.1 && \
    apk del py-pip

ENTRYPOINT ["/usr/bin/curator"]