#!/bin/sh
case "${1}" in
	wpcom)
		git -C  ./vendor/pmc/mu-plugins/vip-wpcom-mu-plugins submodule update --init --recursive
		ln -svfr ./vendor/pmc/mu-plugins/vip-wpcom-mu-plugins/* ./vendor/pmc/mu-plugins
		ln -svfr ./vendor/pmc/plugins/wordpress-vip-plugins/* ./vendor/pmc/plugins
	;;
	vipgo)
		ln -svfr ./vendor/pmc/mu-plugins/vip-go-mu-plugins-built/* ./vendor/pmc/mu-plugins/
		ln -svfr ./vendor/pmc/plugins/pmc-vip-go-plugins/* ./vendor/pmc/plugins/
	;;
esac
