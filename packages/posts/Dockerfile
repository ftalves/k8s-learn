FROM node:alpine

WORKDIR /my-app

COPY package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "start"]
