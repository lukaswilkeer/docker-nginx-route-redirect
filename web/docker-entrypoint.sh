#!/bin/sh
set -eu

export HOST=localhost
export HOST_HTTPS=localhost

envsubst '${HOST} ${HOST_HTTPS}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

exec "$@"

