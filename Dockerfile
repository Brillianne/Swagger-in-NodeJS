FROM node:12.16.0-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 4001

CMD [ "npm", "start" ]