FROM node:16.13.0-bullseye-slim

WORKDIR /usr/src/api

COPY . .

RUN npm install

EXPOSE 3000 443
EXPOSE 443 443
EXPOSE 80 80

CMD ["npm", "start"]
