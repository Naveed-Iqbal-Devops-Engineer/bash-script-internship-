 #!/bin/bash
 website=${1:-"google.com"}

if ping -c 1 $website > /dev/null; then
echo "$website is reachable"
else
echo "$website is not reachable"
fi
