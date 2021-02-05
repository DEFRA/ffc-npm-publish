ARG PARENT_VERSION=1.2.1-node14.15.0

FROM defradigital/node:${PARENT_VERSION}

COPY --chown=node:node publish.sh ./

ENTRYPOINT ["./publish.sh"]
