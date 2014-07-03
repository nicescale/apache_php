apache_php
==========

php runtime with apache


Build
-----

  docker build -t nicescale/apache_php .


Run
-----

  . path.ini

  mkdir -p /data/www

  mkdir -p /data/log

  docker run  -d -v /data/www:$data -v /data/log:$log nicescale/apache_php

At last, push your php code in /data/www on host


Logs
-----

cron service run in docker,so logrotate will be execute
