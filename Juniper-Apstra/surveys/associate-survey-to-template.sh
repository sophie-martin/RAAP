#! /bin/bash

if [ "$#" -ne 2 ]; then
  echo "USAGE: associate-survey-to-template <template id> <survey json file>"
  exit
fi

TEMPLATE_ID=$1
SURVEY_FILE=$2

curl -u sophie:TSL.Dem0s! -k -X POST --header 'Content-Type: application/json' -d @./$SURVEY_FILE https://dev-controller-aap.apps.ocp4aapodf.p123.cesc-test.nca.ihost.com/api/v2/job_templates/$TEMPLATE_ID/survey_spec/
