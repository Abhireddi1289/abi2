FROM node:20-alpine

WORKDIR /Abhi/app/

COPY package.json
COPY Devxpace.js

RUN npm install

EXPOSE 5000

ENTRYPOINT ["node", "Devxpace.js"]
