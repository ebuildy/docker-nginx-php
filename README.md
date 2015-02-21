# debian+nginx+php

Yet another simple Docker image with Nginx + Php. Supervisord is used in foreground to supervisor Nginx and Php-fpm process. The base image is Debian with DotDeb repository setup.

## Uses

I strongly recommand to copy/paste configuration files from ./config folder. Especially for Nginx.

## Developers

Feel free to fork this project or send me PR/issues. You can easily change the Php version. Use ./bin/build and ./bin/test.

## Softwares

### Nginx

Version => 1.6.2
Configuration => /etc/nginx/nginx.conf (no includes)

### Php5-fpm

Version => 5.5
Configuration => /etc/php5/fpm/php.ini and /etc/php5/fpm/php-fpm.ini (no FPM pool include)

### Supervisord

Version => 3.0
Configuration => /etc/supervisord/supervisord.conf
