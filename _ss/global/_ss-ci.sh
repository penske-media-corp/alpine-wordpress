#!/bin/sh
docker-compose run --rm build-php
docker-compose run --rm test-php
