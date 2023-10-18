#! /usr/bin/bash

. /etc/restic/ntfy-message-config

curl \
  -H "$SUCCESS_TAG" \
  -d "$FORGET_SUCCESS_MESSAGE" \
  "$NTFY_TOPIC_URL"