FROM node:16.13.0 as build

RUN apt-get update && apt-get install bash

WORKDIR ./web

COPY public public
COPY src src
COPY yarn.lock yarn.lock
COPY package.json package.json

RUN npm install
RUN npm run build

FROM nginx:alpine

WORKDIR /etc/nginx
COPY nginx.template.conf .
COPY docker-entrypoint.sh .
RUN chmod +x ./docker-entrypoint.sh
RUN /bin/sh /etc/nginx/docker-entrypoint.sh

COPY --from=build /web /usr/share/nginx/html

# for React Router use,
# RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 8000 443
EXPOSE 443 443
EXPOSE 80 443

# CMD ["nginx", "-g", "daemon off;"]
CMD ["nginx", "-g", "daemon off;"];