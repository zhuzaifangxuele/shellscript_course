#!/bin/bash

varname=$1
word="i,m word"
#如果varname存在且非空，则返回varname,负责返回word
echo ${varname:-word} #用word里的值
echo ${varname:=default value}
echo ${varname:? is NULL or not define}
