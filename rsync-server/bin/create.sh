#!/bin/bash
# description:	build rsync server container
# author:	archie2016

con_name='rsync-server'
image='archie2016/rpi-alpine'

docker create -p 873:873 -v /data/apps:/apps -v /data/share:/share --name $con_name $image /apps/rsync-server/bin/start.sh
