#!/bin/bash


HELP() {
#Display help menu
echo "This is an easy to use fast scanner for a small /24"
echo ""
echo "Syntax: Pingsweep.sh 192.168.1.1"
echo "Example: ./bash.sh 192.168.1.1"
echo "This example will ping 192.168.1.1-254"
exit 0
}

if [[ ( $1 == '--help' ) || $1 == '-h' ]]
then
    HELP
else
i=$1
for IP in {1..254}; do
    ping -c 1 -w 0.2 $i.$IP > /dev/null && echo "$1.$IP is up!"
done
fi
exit