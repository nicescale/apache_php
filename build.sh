#!/bin/sh

docker build -t nicescale/apache_php:5.5 .
docker tag nicescale/apache_php:5.5 nicescale/apache_php
