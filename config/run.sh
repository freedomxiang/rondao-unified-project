#!/bin/sh
# 后台启动
php-fpm7.4 -D
# 关闭后台启动
nginx -g 'daemon off;'