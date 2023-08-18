FROM node:14.17.6

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set unsafe-perm true

RUN npm install --only=production

COPY . .

EXPOSE 3000

CMD [ "node", "server/index.js" ]