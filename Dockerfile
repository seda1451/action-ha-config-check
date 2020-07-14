FROM ludeeus/container:python

COPY runaction.sh /runaction.sh
RUN \
    apk add --no-cache \
        jq \
        libxml2 \
        libxslt \
        zlib

ENTRYPOINT ["bash", "/runaction.sh"]
