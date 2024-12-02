#!/bin/bash

# Criar wp-config.php, se não existir
if [ ! -f wp-config.php ]; then
    wp config create --dbname="$WORDPRESS_DB_NAME" --dbuser="$WORDPRESS_DB_USER" --dbpass="$WORDPRESS_DB_PASSWORD" --dbhost="$WORDPRESS_DB_HOST" --allow-root --skip-check
fi

# Instalar WordPress, se ainda não estiver instalado
if ! wp core is-installed --allow-root; then
    wp core install \
        --url="$WORDPRESS_SITE_URL" \
        --title="WordPress Site" \
        --admin_user="$WORDPRESS_ADMIN_USER" \
        --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
        --admin_email="$WORDPRESS_ADMIN_EMAIL" \
        --allow-root
fi

# Instalar e ativar plugins
wp plugin install $(cat /plugins.txt) --activate --allow-root