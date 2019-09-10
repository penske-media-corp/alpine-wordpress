#!/bin/sh
docker-compose build --force-rm --compress --parallel --pull
docker-compose run --rm build-php
docker-compose run --rm test-php
