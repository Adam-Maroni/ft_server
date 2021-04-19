FROM debian:buster
RUN apt -y update
RUN apt -y install vim
RUN apt -y install php php-fpm php-mysql php-json php-mbstring php-xml php-curl php-gd php-intl php-soap php-xmlrpc php-zip
RUN apt	-y install mariadb-server mariadb-client
RUN apt -y install nginx
COPY srcs/nginx/default_nginx_conf_indexon /tmp/default_nginx_conf_indexon
COPY srcs/nginx/default_nginx_conf_indexoff /tmp/default_nginx_conf_indexoff
COPY srcs/phpMyAdmin/phpMyAdmin-5.1.0-all-languages /tmp/phpMyAdmin-5.1.0-all-languages
COPY srcs/wordpress /tmp/wordpress
COPY srcs/configure.sh /tmp/configure.sh
CMD bash /tmp/configure.sh
