#!/bin/sh
# Install WordPress
wp --allow-root core install \
	--admin_email="${WORDPRESS_EMAIL}" \
	--admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
	--admin_user="${WORDPRESS_ADMIN_USER}"\
	--skip-email \
	--title="${WORDPRESS_TITLE}" \
	--url="${WORDPRESS_DOMAIN}" \
	--quiet

# Set the mu-plugin dir for backwards compatability with WPCOM|VIPGO
wp config set WPMU_PLUGIN_DIR "${WEB_ROOT}/wp-content/mu-plugins/vip-go-mu-plugins-built"

# Activate theme
wp --allow-root --url=$WORDPRESS_DOMAIN theme activate $WORDPRESS_THEME
