FROM node:20.11.0

WORKDIR /usr/src/app
COPY ./app ./
RUN npm install

WORKDIR /usr/src/app/mods
RUN npm install
RUN npm run build

EXPOSE 3000

WORKDIR /usr/src/app

ENTRYPOINT ["node", "index.js"]