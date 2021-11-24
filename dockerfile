FROM node:16

WORKDIR /home/vsts/work

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
