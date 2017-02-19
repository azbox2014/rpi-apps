#!/bin/bash
# description:	sync raspbian repository
# author:	zhangbill

share_folder=/data/apps/rpi-repos
con_name="raspbian-repos"

docker create -v $share_folder:/data --name "$con_name" archie2016/rpi-debian /data/bin/start.sh
