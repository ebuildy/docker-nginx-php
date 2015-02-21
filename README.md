# nginx+php

Yet another simple Docker image with Nginx + Php. Supervisord is used in foreground to supervisor Nginx and Php-fpm process.

## Uses

I strongly recommand to copy/paste configuration files from ./config folder. Especially for Nginx.

## Developers

Feel free to fork this project or send me PR/issues. Use ./bin/build and ./bin/test.

## Softwares

### Nginx

Configuration => /etc/nginx/nginx.conf (no includes)

### Php5-fpm

Configuration => /etc/php5/fpm/php.ini and /etc/php5/fpm/php-fpm.ini (no FPM pool include)

### Supervisord

Configuration => /etc/supervisord/supervisord.conf
