#!/bin/sh

set -x

sleep 3

RESULT=`dig +short +time=2 +tries=1 nordicom.no`

date
if [ "${RESULT}" == ";; connection timed out; no servers could be reached" ]; then
  echo "NODE_IP: $NODE_IP"
  echo "POD_IP:  $POD_IP"
fi
