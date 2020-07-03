FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY . .
RUN npm run build:prod


EXPOSE 3000
CMD [ "npm", "run", "server:prod" ]