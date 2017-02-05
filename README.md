# debian+nginx+php

Yet another simple Docker image with Nginx + Php.

## Use

By default => /var/www is web root folder.

``docker run -p 8080:80 ebuildy/nginx-php``
``docker run -p 8080:80 -v $(pwd):/var/www ebuildy/nginx-php``

## Softwares

### OS

- debian:8

### Nginx

- Version 1.10.*
- Configuration /etc/services.d/nginx/nginx.conf

### Php5-fpm

- Version 7
- Configuration /etc/services.d/php/php.ini
- Configuration /etc/services.d/php/php-fpm.conf
- Socket /var/run/php-fpm.sock

## Developers

Feel free to fork this project or send me PR/issues.