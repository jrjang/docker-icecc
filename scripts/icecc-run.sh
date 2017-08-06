#!/bin/bash
set -e

if [ "$ICECC_ENABLE_SCHEDULER" == "1" ]; then
	/usr/sbin/icecc-scheduler -d -vvv -l /tmp/icecc-scheduler.log
fi

/usr/sbin/iceccd -vvv
