#!/bin/bash
# shft.sh: 使用 `shift` 命令步进访问所有的位置参数。

# 将这个脚本命名为 shft.sh，然后在调用时跟上一些参数。
# 例如：
#    sh shft.sh a b c def 83 barndoor

until [ -z "$1" ]  # 直到访问完所有的参数
do
  echo -n "$1 "
  shift
done

echo               # 换行。

# 那些被访问完的参数又会怎样呢？
echo "$2"
# 什么都不会被打印出来。
# 当 $2 被移动到 $1 且没有 $3 时，$2 将会保持空。
# 因此 shift 是移动参数而非复制参数。

exit
