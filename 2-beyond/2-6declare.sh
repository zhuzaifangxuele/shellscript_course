#!/bin/bash

func1 ()
{
  echo This is a function.
}

declare -f        # 显示上面的所有函数。

echo

declare -i var1   # var1 是一个整型变量。
var1=2367
echo "var1 declared as $var1"
var1=var1+1       # 整型变量的运算可以省略 let 命令。
echo "var1 incremented by 1 is $var1."
# 尝试修改整型变量。
echo "Attempting to change var1 to floating point value, 2367.1."
var1=2367.1       # 报错，并且 var1 的值并没有被修改。
echo "var1 is still $var1"

echo

declare -r var2=13.36         # 'declare' 允许在设置变量属性时，
                              #+ 同时给变量赋值。
echo "var2 declared as $var2" # 尝试修改只读变量。
var2=13.37                    # 报错，然后脚本异常结束。

echo "var2 is still $var2"    # 这行语句将不会被执行。

exit 0                        # 脚本也不会从这里结束。
