FROM node:20.1-bullseye-slim

WORKDIR /var/opt/HexCorpModerationInterface

COPY . .

CMD npm ci && npm start