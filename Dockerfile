FROM debian:buster
RUN apt -y update
RUN apt -y install nginx
RUN apt	-y install mariadb-server
