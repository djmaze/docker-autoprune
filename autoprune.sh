#!/bin/sh
set -eu

sleep_time="${SLEEP_TIME:-3600}"

while true; do
  echo "Running docker system prune"

  docker system prune -f

  echo "Sleeping for $sleep_time seconds.."

  sleep "$sleep_time"
done
