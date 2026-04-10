#!/bin/sh
if [ $# -eq 0 ]
then
    echo "Usage: phone searchfor [...searchfor]"
    echo "(You didn't tell me what you want to search for.)"
    exit 1
fi

args="$1"
shift
for arg in $@
do
    args="$args|$arg"
done

egrep -i "($args)" $HOME/week4/mydata.txt | awk -f $HOME/week4/display.awk
