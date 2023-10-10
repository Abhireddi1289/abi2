FROM node:20-alpine

WORKDIR /Abhi2/app/

COPY package.json abhireddi1289/abhi
COPY Devxpace.js abhireddi1289/abhi

EXPOSE 5000

RUN npm install

ENTRYPOINT ["node", "Devxpace.js"]
