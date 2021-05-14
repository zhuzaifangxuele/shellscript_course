#!/bin/bash

case $1 in
-f)
	echo "do something force"
	;;
-b)
	echo "do something back"
	;;
-h)
	echo "usage balabala..."
	;;
*)
	echo "fault option"
	exit 1
esac
