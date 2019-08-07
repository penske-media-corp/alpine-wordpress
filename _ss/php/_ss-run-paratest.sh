#!/bin/sh
set -e
coverage_filename="/tmp/coverage-${WORDPRESS_THEME}-$(git rev-parse --short HEAD).xml"
"${COMPOSER_VENDOR_DIR}"/bin/paratest --exclude-group "${PHPUNIT_EXCLUDE_GROUPS}" --coverage-clover="${coverage_filename}" --runner=WrapperRunner --verbose=1 --stop-on-failure --colors
"${COMPOSER_VENDOR_DIR}"/bin/diffFilter --phpunit "${DIFF_FILE}" "${coverage_filename}"
set +e
