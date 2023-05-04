# 运行php服务镜像
FROM freedomx20/nginx-fpm7.4:1.0

MAINTAINER congjiang

# 安装php的扩展
RUN apt-get update && apt-get install -y php-mysqli php-gd php-curl php-mbstring php-zip

# 上传项目目录
COPY ./dist/ /var/www/backend/
# 上传nginx配置文件
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf
# 上传php.ini配置文件
COPY ./config/php.ini /etc/php/7.4/fpm/php.ini

WORKDIR /var/www/backend/

# 创建缓存目录
RUN mkdir -p -m 0755 cache && chown www-data:root cache/

# CMD ["/home/run.sh"]
CMD php-fpm7.4 -D && nginx -g 'daemon off;'
