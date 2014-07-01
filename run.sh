#!/bin/bash

/usr/sbin/cron

. /etc/apache2/envvars &&
exec /usr/sbin/apache2 -DFOREGROUND
