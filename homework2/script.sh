#!/bin/bash

while true; do
    echo "=== System monitor ==="
    date
    free -h
    df -h /
    uptime
    sleep 10
done
