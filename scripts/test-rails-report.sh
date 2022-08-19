#! /bin/bash
export TEST_RAILS_URL=${TESTRAIL_HOST}/index.php?/api/v2/add_results_for_cases/1
export TEST_RAILS_EMAIL=${TESTRAIL_USERNAME}
export TEST_RAILS_API_KEY=${TESTRAIL_PASSWORD}

curl -H "Content-Type: application/json" \
  -u "${TEST_RAILS_EMAIL}:${TEST_RAILS_API_KEY}" \
  --request POST \
  --data '{"results":[{"case_id":1,"status_id":1},
    {"case_id":2,"status_id":1}]}' \
  "${TEST_RAILS_URL}"
