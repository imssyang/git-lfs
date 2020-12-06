#!/bin/bash

APP=git-lfs

initialize() {
  git lfs install
  echo "($APP) install $APP!"
}

case "$1" in
  init)
    initialize
    ;;
  *)
    SCRIPTNAME="${0##*/}"
    echo "Usage: $SCRIPTNAME {init}"
    exit 3
    ;;
esac

exit 0

# vim: syntax=sh ts=4 sw=4 sts=4 sr noet
