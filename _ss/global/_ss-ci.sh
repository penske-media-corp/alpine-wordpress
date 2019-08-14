#!/bin/sh
if ! eval "docker-compose run --rm build-php";
	then echo -e "ERR: EXIT CODE ${?}"; exit $?
fi

if ! eval " docker-compose up -d --remove-orphans --force-recreate --build wp";
	then echo -e "ERR: EXIT CODE ${?}"; exit $?
fi

if ! eval "docker-compose run --rm test-php";
	then echo -e "ERR: EXIT CODE ${?}"; exit $?
fi
