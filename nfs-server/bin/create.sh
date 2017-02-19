#!/bin/bash
# description:	create nfs server
# author:	archie2016

map_data_folder=/data/share
map_apps_folder=/data/apps/nfs-server
con_name=nfs-server
image=archie2016/rpi-alpine

docker create -i -v $map_data_folder:/data -v $map_apps_folder:/apps --name $con_name $image /apps/bin/start.sh
