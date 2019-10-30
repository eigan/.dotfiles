#!/bin/bash

if [ ! -f /tmp/polybar-tt-last ]
then
    touch -d "5 days ago" /tmp/polybar-tt-last
fi

if [ ! -f /tmp/polybar-tt-cache ]
then
    touch /tmp/polybar-tt-cache
fi

last=$(echo $(($(date +%s) - $(date +%s -r /tmp/polybar-tt-last))))

treshold=3600
cache=/tmp/polybar-tt-cache

if [ $treshold -ge "$last" ] && [ ! -f /tmp/polybar-tt-now ]
then
    cat $cache
else
    touch /tmp/polybar-tt-last
    rm -f /tmp/polybar-tt-now

    tt=$(tt status --cache-clear --oneline | tail -1)

    echo "  $tt" > $cache
    echo "  $tt"
fi