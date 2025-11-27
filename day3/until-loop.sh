#!/bin/bash

service="apache2"

until systemctl is-active --quiet $service

do 
    echo "waiting for $service running......."
     sleep 2
done
echo "now $service is running now"
