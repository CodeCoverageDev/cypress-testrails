#! /bin/bash
export TEST_RAILS_URL=${TESTRAIL_HOST}/index.php?/api/v2/close_run/1
export TEST_RAILS_EMAIL=${TESTRAIL_USERNAME}
export TEST_RAILS_API_KEY=${TESTRAIL_PASSWORD}

curl -H "Content-Type: application/json" \
  -u "${TEST_RAILS_EMAIL}:${TEST_RAILS_API_KEY}" \
  --request POST \
  "${TEST_RAILS_URL}"
