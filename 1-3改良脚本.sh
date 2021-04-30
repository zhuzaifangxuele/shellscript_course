#!/bin/bash
# Cleanup, version 3

# 注意：
# --------
# 此脚本涉及到许多后边才会解释的特性。
# 当你阅读完整本书的一半以后，理解它们就没有任何困难了。


LOG_DIR=/var/log
ROOT_UID=0     # UID为0的用户才拥有root权限。
LINES=50       # 默认保存messages日志文件行数。
E_XCD=86       # 无法切换工作目录的错误码。
E_NOTROOT=87   # 非root权限用户执行的错误码。



# 请使用root权限运行。
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

if [ -n "$1" ]
# 测试命令行参数（保存行数）是否为空
then
  lines=$1
else
  lines=$LINES # 如果为空则使用默认设置
fi


#  Stephane Chazelas 建议使用如下方法检查命令行参数，
#  但是这已经超出了此阶段教程的范围。
#
#    E_WRONGARGS=85  # Non-numerical argument (bad argument format).
#    case "$1" in
#    ""      ) lines=50;;
#    *[!0-9]*) echo "Usage: `basename $0` lines-to-cleanup";
#     exit $E_WRONGARGS;;
#    *       ) lines=$1;;
#    esac
#
#* 在第十一章“循环与分支”中会对此作详细的阐述。


cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]  # 也可以这样写 if [ "$PWD" != "$LOG_DIR" ]
                            # 检查工作目录是否为 /var/log ?
then
  echo "Can't change to $LOG_DIR"
  exit $E_XCD
fi  # 在清理日志前，二次确认是否在正确的工作目录下。

# 更高效的写法：
#
# cd /var/log || {
#   echo "Cannot change to necessary directory." >&2
#   exit $E_XCD;
# }


tail -n $lines messages > mesg.temp # 保存messages日志文件最后一部分
mv mesg.temp messages              # 替换系统日志文件以达到清理目的

#  cat /dev/null > messages
#* 我们不需要使用这个方法了，上面的方法更安全

cat /dev/null > wtmp  #  ': > wtmp' 与 '> wtmp' 有同样的效果
echo "Log files cleaned up."
#  注意在/var/log目录下的其他日志文件不会被这个脚本清除

exit 0
#  返回0表示脚本运行成功
