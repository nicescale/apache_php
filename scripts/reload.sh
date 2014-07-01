#!/bin/bash

get_sid() {
  cdir=`dirname $0`
  cd $cdir/..
  tdir=`pwd`
  sid=`basename $tdir`
  echo $sid
}

sid=`get_sid`
[ -z "$sid" ] && echo "service id not found" 1>&2 && exit 1
cid=`docker ps|grep $sid|awk '{print $1}'`
docker kill -s USR1 $cid
