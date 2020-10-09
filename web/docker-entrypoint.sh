#!/usr/bin/env sh
set -eu

envsubst '${HOST} ${HOST_HTTPS}' < ./nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"

