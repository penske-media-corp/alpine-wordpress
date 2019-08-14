#!/bin/sh
if [ -z "${COMPOSER_AUTH}" ]
	then echo "You need to setup COMPOSER_AUTH -> https://getcomposer.org/doc/03-cli.md#composer-auth"; exit 1
fi

docker-compose up --build --force-recreate --remove-orphans -d
