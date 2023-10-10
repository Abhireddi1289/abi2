FROM node:20-alpine

WORKDIR /Abhi2/app/

COPY package.json abhireddi1289/abhi
COPY Devxpace.js abhireddi1289/abhi

RUN npm install

EXPOSE 5000

ENTRYPOINT ["node", "Devxpace.js"]
