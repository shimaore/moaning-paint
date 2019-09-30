FROM node:alpine
RUN apk add --no-cache tini
COPY . /src/app
WORKDIR /src/app
RUN \
  echo Build \
  && npm run build && rm -rf node_modules \
  && npm install --production && npm cache -f clean \
  && rm -rf \
    /tmp/npm* \
  && echo Done

USER node
ENTRYPOINT ["/sbin/tini","--","node","server.js"]
