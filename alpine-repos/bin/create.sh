#!/bin/bash
# description:  sync raspbian repository
# author:       zhangbill

share_folder=/data/apps/alpine-repos
con_name=alpine-repos
image=archie2016/rpi-alpine-repos

docker create -v $share_folder:/data --name $con_name $image

