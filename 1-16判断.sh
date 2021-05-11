#!/bin/bash

if echo "hello" |grep "world"; then
    echo -e "ture\n"
else
    echo -e "false\n"
fi

if [ -f a.out ];then
  echo "a.out is exist"
fi

a=3

if [ "$a" -gt 0 ]
then
  if [ "$a" -lt 5 ]
  then
    echo "The value of \"a\" lies somewhere between 0 and 5."
  fi
fi

# 和下面的结果相同

if [ "$a" -gt 0 ] && [ "$a" -lt 5 ]
then
  echo "The value of \"a\" lies somewhere between 0 and 5."
fi
