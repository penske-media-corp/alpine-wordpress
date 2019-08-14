#!/bin/sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/global/_ss-setup-diff.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-run-phplint.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-run-phpcs.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-setup-xdebug.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-setup-phpunit.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-run-paratest.sh | sh
wget --no-cache -O - https://raw.githubusercontent.com/penske-media-corp/alpine-wordpress/master/_ss/php/_ss-run-codecov.sh | sh
