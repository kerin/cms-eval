#!/bin/bash
set -ea

# DB_HOST=${DB_HOST:-$MYSQL_PORT_3306_TCP_ADDR}
# DB_USER=${DB_USER:-$MYSQL_ENV_MYSQL_USER}
# DB_NAME=${DB_NAME:-$MYSQL_ENV_MYSQL_DATABASE}
# DB_PASS=${DB_PASS:-$MYSQL_ENV_MYSQL_PASSWORD}
# DB_PORT=${DB_PORT:-$MYSQL_PORT_3306_TCP_PORT}
# DB_PORT=${DB_PORT:-3306}

# while ! nc -z $DB_HOST $DB_PORT; do
#   echo "Waiting for Database $DB_HOST:$DB_PORT..."
#   sleep 2
# done

# if [ ! -f /var/www/html/api/.installed ]; then
#     echo Running autoconfig script...
#     sync # see: https://github.com/docker/docker/issues/9547
#     cd /var/www/html/bin/

#     # cp /var/www/html/api/config_sample.php /var/www/html/api/config.php

#     # Write config file with DB envs
#     # ./directus install:config -h $DB_HOST -n $DB_NAME -u $DB_USER -p $DB_PASS
#     # Initialize database
#     ./directus install:database

#     #cp /var/www/html/api/configuration_sample.php /var/www/html/api/configuration.php

#     # Setup Admin
#     #./directus install:install -e=$ADMIN_EMAIL -p=$ADMIN_PASSWORD -t=$SITE_NAME

#     touch /var/www/html/api/.installed
# fi

apache2-foreground
