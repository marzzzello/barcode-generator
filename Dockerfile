FROM node:alpine

ENV EXPRESS_PORT=3000
EXPOSE ${EXPRESS_PORT}

WORKDIR /app

COPY index.js .
COPY utils.js .
COPY package.json .

RUN npm install

ENTRYPOINT ["node", "index.js"]
