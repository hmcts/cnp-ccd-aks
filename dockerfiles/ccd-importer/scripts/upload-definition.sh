#!/bin/sh
set -e

chmod +x /scripts/*.sh

# create user with ccd-import role
/scripts/create-importer-user.sh

IMPORTER_USERNAME=ccd-importer@server.net
IMPORTER_PASSWORD=Password12
IDAM_URI=http://idam-api
REDIRECT_URI=http://localhost:3000/receiver
CLIENT_SECRET=123456

if [ ${VERBOSE} = "true" ]; then
  export CURL_OPTS="-v"
else
  export CURL_OPTS="--fail --silent"
fi

export BULK_SCAN_ORCHESTRATOR_BASE_URL=http://bulk-scan-orchestrator # Service does not exist as of now but will be added later
/scripts/template_ccd_definition.py /definition-template.xlsx /definition.xlsx

userToken=$(sh ./scripts/idam-authenticate.sh ${IMPORTER_USERNAME} ${IMPORTER_PASSWORD} ${IDAM_URI} ${REDIRECT_URI} ${CLIENT_SECRET})

# add ccd role
/scripts/add-ccd-role.sh "caseworker-bulkscan" "PUBLIC" "${userToken}"

# upload definition file
/scripts/import-definition.sh "/definition.xlsx" "${userToken}"
