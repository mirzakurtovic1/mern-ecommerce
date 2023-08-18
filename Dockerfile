FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --no-optional --unsafe-perm && npm cache clean --force

COPY . .

RUN npm run build

EXPOSE 3000 

CMD [ "node", "server/index.js" ]