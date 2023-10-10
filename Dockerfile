FROM node:20-alpine

WORKDIR /Abhi2/app/

COPY package.json .
COPY Devxpace.js .

EXPOSE 5000

RUN npm install

ENTRYPOINT ["node", "Devxpace.js"]
