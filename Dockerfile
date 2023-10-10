FROM node:20-alpine

WORKDIR /Abhi2/app/

COPY package.json ./
COPY Devxpace.js abhireddi1289/abhi

EXPOSE 5000

ENTRYPOINT ["node", "Devxpace.js"]
