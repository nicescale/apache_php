#!/bin/bash

. path.ini

mkdir -p /data/www
mkdir -p /data/log

docker run  -d -v /data/www:$data -v /data/log:$log nicescale/apache_php
