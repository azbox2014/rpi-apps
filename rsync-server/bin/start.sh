#!/bin/sh
# description:	rsync-server entrypoint
# author:	archie2016

[ -e /usr/bin/rsync ] || {
    # change repositories
    echo 'http://10.0.1.6/alpine/v3.5/main' > /etc/apk/repositories

    # install rsync
    apk update && apk add rsync
}

# configuration 
rm -f /var/run/rsyncd.pid
rsync --daemon --config=/apps/rsync-server/conf/rsyncd.conf --no-detach
