FROM debian:buster
RUN apt -y update
RUN apt -y install php php-fpm php-mysql php-json php-mbstring
RUN apt -y install nginx
RUN apt	-y install mariadb-server
COPY srcs/nginx/default_nginx_conf /etc/nginx/sites_availabe/default
COPY srcs/phpMyAdmin/phpMyAdmin-5.1.0-all-languages /usr/share/phpmyadmin/
RUN ln -s /usr/share/phpmyadmin /var/www/html/
