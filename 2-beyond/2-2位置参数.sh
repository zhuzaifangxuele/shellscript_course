#!/bin/bash

echo "now, we print args"
for i in "$*"
do
	echo $i
done
echo "there are $# argument"

echo "quote use \$@"
for i in "$@"
do
	echo $i
done

echo "done!"

echo "$@"    # 1 2 3 4 5
shift
echo "$@"    # 2 3 4 5
shift
echo "$@"    # 3 4 5

date&
echo "pid of 'date' is $!"

echo "myself pid id $$"
