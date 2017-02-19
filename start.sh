#!/bin/bash
# description:	clean docker logs
# author:	zhangbill

[ -z "$1" ] && { 
	echo "Usage: $0 <container name>"
	exit 0
}
con_name="$1"

running=$(docker ps | grep "$con_name")
if [ -z "$running" ] ; then
	> $(docker inspect $con_name | grep LogPath | awk -F\" '{print $4}') 
	docker start $con_name > /dev/null
fi
