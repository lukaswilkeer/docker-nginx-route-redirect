FROM node:alpine as build

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
COPY docker-entrypoint.sh /
COPY --from=build /web /usr/share/nginx/html

# for React Router use,
# RUN rm /etc/nginx/conf.d/default.conf

EXPOSE "8000":"80"

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
