#!/bin/bash

curl "http://localhost:4741/usernotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "usernotes": {
      "title": "'"${TEXT}"'",
      "contents": "'"${TEXT}"'",
      "tag": "'"${TEXT}"'"
    }
  }'

echo
