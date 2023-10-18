#! /usr/bin/bash

. /etc/restic/ntfy-message-config

curl \
  -H "$FAILURE_TAG" \
  -d "$FORGET_FAILURE_MESSAGE" \
  "$NTFY_TOPIC_URL"