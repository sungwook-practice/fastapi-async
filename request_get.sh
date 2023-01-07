#!/bin/bash
set -e

function run() {
  # change your IP
  endpoint=$1

  for i in $(seq 5);do
    echo "=== count: $i endpoint: $endpoint ==="
    curl -s -o /dev/null $endpoint &
  done

  wait
}

time run $1
