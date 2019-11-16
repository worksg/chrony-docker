#! /bin/sh

if [ -z "$@" ]; then
    if [ -f "/var/run/chronyd.pid" ]; then
        rm -f /var/run/chronyd.pid
    fi
    if [ -f "/var/run/chrony/chronyd.pid" ]; then
        rm -f /var/run/chrony/chronyd.pid
    fi
    /usr/sbin/chronyd -d -s
else
    exec "$@"
fi
