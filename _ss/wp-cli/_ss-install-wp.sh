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
# @NOTE: This is a misuse of the VIP_GO_ENV variable as that's supposed to define as such (production|local|stage|preprod|etc.)
if [ 'vipgo' = $VIP_GO_ENV ]
	then wp config set WPMU_PLUGIN_DIR "${WEB_ROOT}/wp-content/mu-plugins/vip-go-mu-plugins-built"
	wp config set WP_PLUGIN_DIR "${WEB_ROOT}/wp-content/plugins/pmc-vip-go-plugins"
elif [ 'wpcom' = $VIP_GO_ENV ]
	then wp config set WPMU_PLUGIN_DIR "${WEB_ROOT}/wp-content/mu-plugins/vip-wpcom-mu-plugins"
	wp config set WP_PLUGIN_DIR "${WEB_ROOT}/wp-content/plugins/wordpress-vip-plugins"
fi

# Activate theme
wp --allow-root --url=$WORDPRESS_DOMAIN theme activate $WORDPRESS_THEME
