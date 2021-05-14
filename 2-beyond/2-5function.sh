#!/bin/bash

function chmod_file() {
	local file=$1

	if [ -f ${file} ];then
		chmod +x ${file}
	fi
}

#file 只在函数中生效
echo $file
chmod_file $1
