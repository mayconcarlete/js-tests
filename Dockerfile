FROM node:16-alpine3.18

WORKDIR /app

COPY package*.json .
COPY index.js index.js 
RUN npm install

ENTRYPOINT [ "node", "index.js" ]