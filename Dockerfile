FROM ubuntu

RUN apt-get update && apt-get install -y \
nginx-light \
php5-fpm \
php5-curl \
php5-mysql \
php5-mongo \
php5-memcached \
php5-xdebug  

&& rm -rf /var/lib/apt/lists/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./php.ini /etc/php5/fpm/php.ini
COPY ./php-fpm-pool.conf /etc/php5/fpm/pool.d/www.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
