#!/bin/sh
set -e
if [ "${UNIQUE_TEST_TOKEN}" ]
	then coverage_filename="/tmp/coverage-${WORDPRESS_THEME}-$(git rev-parse --short HEAD)-${UNIQUE_TEST_TOKEN}.xml"
	else coverage_filename="/tmp/coverage-${WORDPRESS_THEME}-$(git rev-parse --short HEAD).xml"
fi
"${COMPOSER_VENDOR_DIR}"/bin/paratest --exclude-group "${PHPUNIT_EXCLUDE_GROUPS}" --coverage-clover="${coverage_filename}" --runner=WrapperRunner --verbose=1 --stop-on-failure --colors
"${COMPOSER_VENDOR_DIR}"/bin/diffFilter --phpunit "${DIFF_FILE}" "${coverage_filename}"
set +e
