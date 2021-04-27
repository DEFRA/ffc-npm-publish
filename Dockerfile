ARG PARENT_VERSION=1.2.5-node14.16.1

FROM defradigital/node:${PARENT_VERSION}

COPY --chown=node:node ./scripts .
RUN install -d -o node -g node /home/node/project/
RUN install -d -o node -g node /home/node/working/

ENTRYPOINT ["./publish"]
