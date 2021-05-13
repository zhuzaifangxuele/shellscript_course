#!/bin/bash
# Bash脚本标准起始行。

# Cleanup, version 2

# 请使用root权限执行。
# 这里可以插入代码来打印错误信息，并在未使用root权限时退出。

LOG_DIR=/var/log
# 使用变量比硬编码（hard-coded）更合适
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp


echo "Logs cleaned up."

exit # 正确终止脚本的方式。
     # 不带参数的exit返回上一条指令的运行结果。
