FROM node:14.19.1-alpine

ENV NODE_ENV production

WORKDIR /code

COPY --chown=node:node . /code

RUN npm ci --only=production

USER node

CMD ["node", "server.js"]