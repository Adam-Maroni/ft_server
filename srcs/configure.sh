#Lancement de mysql
service mysql start

#Configuration des propriétaire pour les sites
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

#Configuration de NGINX
cp /tmp/default_nginx_conf /etc/nginx/sites-availabe/default
rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Config MYSQL
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

#Configuration de phpmyadmin
cp -r /tmp/phpMyAdmin-5.1.0-all-languages /var/www/html/phpmyadmin


#Lancement de phpmyadmin et nginx
service php7.3-fpm start
service nginx start
bash
