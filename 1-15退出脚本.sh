#!/bin/bash

echo hello
echo $?    # 返回值为0，因为执行成功。

lskdf      # 不认识的命令。
echo $?    # 返回非0值，因为失败了。


echo

exit 113   # 将返回113给shell
           # 为了验证这些，在脚本结束的地方使用“echo $?”

#  按照惯例，'exit 0' 意味着执行成功，
#+ 非0意味着错误或者异常情况。
#  查看附录章节“退出码的特殊含义”

# exit
# exit，exit $? 以及省略 exit 效果等同。
