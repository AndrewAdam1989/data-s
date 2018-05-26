#!/bin/bash

php-fpm7.0 --daemonize --fpm-config /etc/php/7.0/fpm/php-fpm.conf
sed -i "s/UUID/$UUID/g" /etc/v2ray/config.json
sed -i "s/ALTERID/$ALTERID/g" /etc/v2ray/config.json
sed -i "s#WS_PATH#$WS_PATH#g" /etc/v2ray/config.json
sed -i "s#WS_PATH#$WS_PATH#g" /etc/nginx/conf.d/default.conf
v2ray -config=/etc/v2ray/config.json &
nginx -g 'daemon off;'
