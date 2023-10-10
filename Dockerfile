FROM node:20-alpine

WORKDIR /Abhi/app/

COPY package.json .
COPY Abhiworld.js .

RUN npm install

EXPOSE 5000

ENTRYPOINT ["node", "Devxpace.js"]
