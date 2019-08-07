#!/bin/sh
set -e
coverage_filename="/tmp/coverage-${WORDPRESS_THEME}-$(git rev-parse --short HEAD).xml"
"${COMPOSER_VENDOR_DIR}"/bin/paratest --exclude-group "${PHPUNIT_EXCLUDE_GROUPS}" --coverage-clover="${coverage_filename}" --verbose=1
"${COMPOSER_VENDOR_DIR}"/bin/diffFilter --phpunit "${DIFF_FILE}" "${coverage_filename}"
set +e
