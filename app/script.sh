#!/bin/sh

set -x

RESULT=`dig +short +time=3 +tries=5 nordicom.no`

date
if [ "${RESULT}" == ";; connection timed out; no servers could be reached" ]; then
  echo "NODE_IP: $NODE_IP"
  echo "POD_IP:  $POD_IP"
fi
