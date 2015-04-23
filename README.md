# debian+nginx+php

Yet another simple Docker image with Nginx + Php. The base image is the very minimal Phusion image, minimal Ubuntu base image modified for Docker-friendliness.

## Use

There are 2 volumes:

- ````/var/www```` The files to serve (Php, static...)
- ````/var/config```` The Nginx and Php configuration

Copy/paste configuration sample.

## Developers

Feel free to fork this project or send me PR/issues. You can easily change the Php version. Use ./bin/build and ./bin/test.

## Softwares

### OS

- https://github.com/phusion/baseimage-docker
- ubuntu:14.04

### Nginx

- Version 1.6.2
- Configuration /etc/nginx/nginx.conf (no includes)

### Php5-fpm

- Version 5.5
- Configuration /etc/php5/fpm/php.ini 
- Configuration /etc/php5/fpm/php-fpm.ini (no FPM pool include)

