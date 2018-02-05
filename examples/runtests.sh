#!/bin/bash

REGIONS=${1:-$OS_REGION_NAME}
DIRS=(simple bastion natbastion multiregion)

EXIT=0
for d in ${DIRS[@]}; do
    for r in $REGIONS; do
        $(dirname $0)/runtest.sh "$d" "$r"
        EXIT=$((EXIT+$?))
    done
done

exit $EXIT
