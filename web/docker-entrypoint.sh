#!/usr/bin/env sh
set -eu

export HOST=localhost
export HOST_HTTPS=localhost

envsubst '${HOST} ${HOST_HTTPS}' < ./nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"

