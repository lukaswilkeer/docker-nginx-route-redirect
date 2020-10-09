FROM node:latest as build

WORKDIR ./web

RUN npm install -g serve
RUN npm install
RUN npm build


FROM nginx:alpine

WORKDIR /etc/nginx

COPY nginx.template.conf .
COPY docker-entrypoint.sh /
COPY --from=build /web /usr/share/nginx/html

EXPOSE "8000":"80"

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
