#!/bin/sh

RESULT=`dig +short +time=3 +tries=1 nordicom.no`

if [ "${RESULT}" == ";; connection timed out; no servers could be reached" ]; then
  date
  echo "NODE_IP: $MY_NODE_IP"
  echo "POD_IP:  $MY_POD_IP"
fi
