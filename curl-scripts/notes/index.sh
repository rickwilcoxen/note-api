#!/bin/bash

curl "http://localhost:4741/usernotes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
