#!/bin/sh -x

basename=${1%.*}
rm -v ${basename}_[0-9]*_messages.log ${basename}_[0-9]*_errors.log
../sipp/sipp.git/sipp 10.105.72.24:5060 -sf "$1" -s 888 -l 1 -m 1 -trace_msg -trace_err -mp 8000
echo completed
cat ${basename}_[0-9]*_errors.log