#!/bin/sh
case "$1" in
	wpcom)
		git -C ${WEB_ROOT}/wp-content/mu-plugins/vip-wpcom-mu-plugins submodule update --init --recursive
		ln -svf ${WEB_ROOT}/wp-content/mu-plugins/vip-wpcom-mu-plugins/* ${WEB_ROOT}/wp-content/mu-plugins
		ln -svf ${WEB_ROOT}/wp-content/plugins/wordpress-vip-plugins/* ${WEB_ROOT}/wp-content/plugins
		ln -svf ${WEB_ROOT}/wp-content/plugins ${WEB_ROOT}/wp-content/themes/vip
	;;
	vipgo)
		ln -svf ${WEB_ROOT}/wp-content/plugins/pmc-vip-go-plugins/* ${WEB_ROOT}/wp-content/plugins
		ln -svf ${WEB_ROOT}/wp-content/mu-plugins/vip-go-mu-plugins-built/* ${WEB_ROOT}/wp-content/mu-plugins
	;;
esac
