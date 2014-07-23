#!/bin/bash

/usr/sbin/cron

envfile=${CONF_DIR-:/etc/apache2}/env

[ -f $envfile ] &&
. $envfile &&
eval `cat $envfile|grep -v ^#|grep '='|cut -f1 -d'='|xargs echo export`

. /etc/apache2/envvars
rm -f ${APACHE_RUN_DIR:-/var/run/apache2}/*
exec /usr/sbin/apache2 -DFOREGROUND
