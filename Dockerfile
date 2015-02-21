FROM debian:wheezy

MAINTAINER ebuildy

RUN echo "deb http://packages.dotdeb.org wheezy all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org wheezy all" >> /etc/apt/sources.list

RUN echo "deb http://packages.dotdeb.org wheezy-php55 all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org wheezy-php55 all" >> /etc/apt/sources.list

COPY ./config/dotdeb.gpg /opt/dotdeb.gpg
RUN apt-key add /opt/dotdeb.gpg

RUN apt-get update && apt-get install -y \
nginx-light \
php5-curl \
php5-fpm \
php5-memcached \
php5-mongo \
php5-mysql \
php5-xdebug \
supervisor

RUN apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y &&  rm -rf /var/lib/apt/lists/*

RUN echo "" > /var/log/php5-fpm.log

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/php.ini /etc/php5/fpm/php.ini
COPY ./config/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY ./config/supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 80 443

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
