#Lancement de mysql
service mysql start

#SSL
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/ft_server.crt -keyout /etc/nginx/ssl/ft_server.key -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=amaroni/CN=ft_server"

#Configuration de NGINX
if [ $INDEX -eq 1 ]
then
	cp /tmp/default_nginx_conf_indexon /etc/nginx/sites-available/default
else
	cp /tmp/default_nginx_conf_indexoff /etc/nginx/sites-available/default
fi
rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Config MYSQL
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

#Configuration de phpmyadmin
cp -r /tmp/phpMyAdmin-5.1.0-all-languages /var/www/html/phpmyadmin

#Configuration de wordpress
cp -r /tmp/wordpress /var/www/html/wordpress

#Configuration des propriétaire pour les sites
chown -R www-data /var/www/*
chmod -R 755 /var/www/*
rm -f /var/www/html/index.nginx-debian.html

#Lancement de phpmyadmin et nginx
service php7.3-fpm start
service nginx start
bash
