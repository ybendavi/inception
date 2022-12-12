#!/bin/sh

cd /var/www/html

sleep 5

if [ ! -d wp-content ]; then
wp core download --allow-root
fi

wp core is-installed
if [ $? -eq 1 ]; then
wp core install --url="https://ybendavi.42.fr" --title=inception --admin_user=ybendavi --admin_password=karadoc --admin_email=inception@inception.inception
wp user create user1 user1@inception.inception --user_pass=kikou
fi

/usr/sbin/php-fpm7 -F

