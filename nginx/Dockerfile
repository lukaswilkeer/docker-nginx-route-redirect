FROM nginx:alpine

WORKDIR /etc/nginx

COPY nginx.template.conf .

COPY docker-entrypoint.sh /

EXPOSE "8000":"80"

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
