#!/bin/bash
# description:	sync centos repository
# author:	zhangbill

docker create -itv /data/apps/centos-repos:/data --name centos-repos archie2016/rpi-alpine /data/bin/start.sh
