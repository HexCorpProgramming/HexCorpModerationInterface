FROM node:20.1-bullseye-slim

WORKDIR /var/opt/HexCorpModerationInterface

COPY . .

EXPOSE 8890/tcp

RUN npm ci

CMD npm start