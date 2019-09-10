#!/bin/sh
(docker-compose run --rm build-php false) || echo 'build-php failed $?'
(docker-compose run --rm test-php false) || echo 'test-php failed $?'
docker-compose run --rm test-php
