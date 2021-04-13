FROM debian:buster
RUN apt -y update
RUN apt -y install vim
RUN apt -y install php php-fpm php-mysql php-json php-mbstring
RUN apt	-y install mariadb-server mariadb-client
RUN apt -y install nginx
COPY srcs/nginx/default_nginx_conf /etc/nginx/sites_availabe/default
COPY srcs/phpMyAdmin/phpMyAdmin-5.1.0-all-languages /usr/share/phpmyadmin/
COPY srcs/phpMyAdmin/config.inc.php /usr/share/phpmyadmin/config.inc.php
