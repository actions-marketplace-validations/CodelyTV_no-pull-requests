#!/usr/bin/env bash

echoerr() {
  echo "$@" 1>&2
}

log::message() {
  echo "--------------"
  echo "$@"
}

coll::join_by() {
  local IFS="$1"
  shift
  echo "$*"
}

coll::map() {
  local -r fn="$1"

  for x in $(cat); do
    "$fn" "$x"
  done
}

str::contains() {
  echo "$1" | grep "$2" || true
}
