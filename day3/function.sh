#!/bin/bash
#🛠 Real-time Example: Reusable Function to Check Service Status

check-service(){
if systemctl is-active --quiet $1; then
       echo "service $1 is running"
else
     echo "service $1 is not running"
fi
}
check-service apache2
check-service ssh
check-service nginx
