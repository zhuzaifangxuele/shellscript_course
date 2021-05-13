#!/bin/bash
# ex9.sh

# 变量赋值与替换

a=375
hello=$a
#   ^ ^

#----------------------------------------------------
# 初始化变量时，赋值号 = 的两侧绝不允许有空格出现。
# 如果有空格会发生什么？

#   "VARIABLE =value"
#            ^
#% 脚本将会尝试运行带参数 "=value" 的 "VARIABLE " 命令。

#   "VARIABLE= value"
#             ^
#% 脚本将会尝试运行 "value" 命令，
#+ 同时设置环境变量 "VARIABLE" 为 ""。
#----------------------------------------------------


echo hello    # hello
# 没有引用变量，"hello" 只是一个字符串...

echo $hello   # 375
#    ^          这是变量引用。

echo ${hello} # 375
#               与上面的类似，变量引用。

# 字符串内引用变量
echo "$hello"    # 375
echo "${hello}"  # 375

echo

hello="A B  C   D"
echo $hello   # A B C D
echo "$hello" # A B  C   D
# 正如我们所见，echo $hello 与 echo "$hello" 的结果不同。
# ====================================
# 字符串内引用变量将会保留变量的空白符。
# ====================================

echo

echo '$hello'  # $hello
#    ^      ^
#  单引号会禁用掉（转义）变量引用，这导致 "$" 将以普通字符形式被解析。

# 注意单双引号字符串引用效果的不同。

hello=    # 将其设置为空值
echo "\$hello (null value) = $hello"      # $hello (null value) =
# 注意 
# 将一个变量设置为空与删除(unset)它不同，尽管它们的表现形式相同。

# -----------------------------------------------

# 使用空白符分隔，可以在一行内对多个变量进行赋值。
# 但是这会降低程序的可读性，并且可能会导致部分程序不兼容的问题。

var1=21  var2=22  var3=$V3
echo
echo "var1=$var1   var2=$var2   var3=$var3"

# 在一些老版本的 shell 中这样写可能会有问题。

# -----------------------------------------------

echo; echo

numbers="one two three"
#           ^   ^
other_numbers="1 2 3"
#               ^ ^
# 如果变量中有空白符号，那么必须用引号进行引用。
# other_numbers=1 2 3                  # 出错
echo "numbers = $numbers"
echo "other_numbers = $other_numbers"  # other_numbers = 1 2 3
# 也可以转义空白符。
mixed_bag=2\ ---\ Whatever
#           ^    ^ 使用 \ 转义空格

echo "$mixed_bag"         # 2 --- Whatever

echo; echo

echo "uninitialized_variable = $uninitialized_variable"
# 未初始化的变量是空值(null表示不含有任何值)。
uninitialized_variable=   # 只声明而不初始化，等同于设为空值。
echo "uninitialized_variable = $uninitialized_variable" # 仍旧为空

uninitialized_variable=23       # 设置变量
unset uninitialized_variable    # 删除变量
echo "uninitialized_variable = $uninitialized_variable"
                                # uninitialized_variable =
                                # 变量值为空
echo

exit 0
