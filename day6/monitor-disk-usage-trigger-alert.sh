#!/bin/bash
alert=50
usage=$(df / | grep / | awk '{print $5}' | sed s'/%//g')
if [ $usage -gt $alert ]; then

echo "alert disk usage is above $alert% currenlty at $usage"

else
echo "disk usage is normal : $usage"
fi 
