#!/bin/sh

if [ ! -d /var/lib/mysql/$DB_NAME ]; then
  mysql_install_db
  /usr/share/mariadb/mysql.server start
  mysql -e "\
    CREATE DATABASE IF NOT EXISTS $DB_NAME; \
    CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY 'nani'; \
    GRANT ALL ON $DB_NAME.* TO '$MYSQL_USER'@'%'; \
    ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; \
    FLUSH PRIVILEGES; \
    "
  mysqladmin --user=root --password=$MYSQL_ROOT_PASSWORD shutdown
fi

exec "$@"
