FROM node:20.1-bullseye-slim

WORKDIR /var/opt/HexCorpModerationInterface

COPY . .

RUN npm ci

CMD npm start