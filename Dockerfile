FROM phusion/baseimage:0.9.19

RUN apt-get update --fix-missing
RUN apt-get install -y \
            nginx-light \
            php5-curl \
            php5-fpm \
            php5-imagick \
            php5-gd \
            php5-mcrypt \
            php5-memcached \
            php5-mongo \
            php5-mysql \
            php5-xdebug

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN echo "" > /var/log/php5-fpm.log

RUN mkdir -p        /var/www

RUN mkdir               /etc/service/nginx
ADD service/nginx.sh    /etc/service/nginx/run
RUN chmod +x            /etc/service/nginx/run

RUN mkdir               /etc/service/phpfpm
ADD service/phpfpm.sh   /etc/service/phpfpm/run
RUN chmod +x            /etc/service/phpfpm/run

EXPOSE 80 443

VOLUME ["/var/config", "/var/www"]

CMD ["/sbin/my_init"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
