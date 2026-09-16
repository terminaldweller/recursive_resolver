#!/bin/sh

args="$@"

curl --retry 10 \
  --connect-timeout 30 \
  "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts" \
  -o /hosts/hosts.tmp \
  && mv /hosts/hosts.tmp /hosts/hosts \
  && /usr/local/bin/supercronic "$args"
