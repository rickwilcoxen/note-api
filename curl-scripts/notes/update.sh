# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/usernotes/${ID}" \
  --include \
  --request PATCH \
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
