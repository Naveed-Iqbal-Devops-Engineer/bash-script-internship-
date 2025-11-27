#!/bin/bash
# 💼 Real-time Example: Check Disk Usage

#usage=80
read -p "check disk usage" usage

if [ $usage -gt 120 ]; then
  echo "crtical situation plz imeedately stop server"

elif [ $usage -gt 80 ]; then 
 echo "disk usage is above 80% sending alert."

else 
    echo "disk usage is normal $usage"
fi
