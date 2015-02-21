FROM ubuntu

MAINTAINER ebuildy

RUN apt-get update && apt-get install -y \
nginx-light \
php5-curl \
php5-fpm \
php5-memcached \
php5-mongo \
php5-mysql \
php5-xdebug \
supervisor

&& rm -rf /var/lib/apt/lists/*

RUN apt-get install -y python-pip && pip install supervisor-stdout

RUN echo "" > /var/log/php5-fpm.log
RUN echo "" > /var/log/nginx/access.log
RUN echo "" > /var/log/nginx/error.log

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/php.ini /etc/php5/fpm/php.ini
COPY ./config/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY ./config/supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 80 443

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
