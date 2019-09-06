#!/bin/sh
set -e
docker-compose run --rm build-php
docker-compose up -d --remove-orphans --force-recreate --build wp
docker-compose run --rm test-php
