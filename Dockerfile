ARG PARENT_VERSION=2.5.2-node22.13.1

FROM defradigital/node:${PARENT_VERSION}

COPY --chown=node:node ./scripts .
RUN install -d -o node -g node /home/node/project/
RUN install -d -o node -g node /home/node/working/

ENTRYPOINT ["./publish"]
