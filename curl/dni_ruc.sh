#!/usr/bin/env bash
set -euo pipefail

TOKEN='<token>'
DNI='27427864'
BASE_URL='https://api.json.pe/api'

curl --request POST \
  --url "/dni" \
  --header "Authorization: Bearer " \
  --header 'Content-Type: application/json' \
  --data "{ \"dni\": \"\" }"
