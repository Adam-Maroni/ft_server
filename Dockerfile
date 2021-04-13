FROM debian:buster
RUN apt -y update
RUN apt -y install vim
RUN apt -y install php php-fpm php-mysql php-json php-mbstring php-xml
RUN apt	-y install mariadb-server mariadb-client
RUN apt -y install nginx
COPY srcs/nginx/default_nginx_conf /tmp/default_nginx_conf
COPY srcs/phpMyAdmin/phpMyAdmin-5.1.0-all-languages /tmp/phpMyAdmin-5.1.0-all-languages
COPY srcs/configure.sh /tmp/configure.sh
CMD bash /tmp/configure.sh
