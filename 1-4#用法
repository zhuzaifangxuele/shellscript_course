# 这是一行注释

echo "A comment will follow." # 这儿可以写注释
#                            ^ 注意在#之前有空格


    # 这个注释前面存在着一个制表符（tab）

initial=( `cat "$startfile" | sed -e '/#/d' | tr -d '\n' |\
# 删除所有带'#'注释符号的行
           sed -e 's/\./\. /g' -e 's/_/_ /g'` )
