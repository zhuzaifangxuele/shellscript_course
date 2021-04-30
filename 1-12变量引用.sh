List="one two three"

for a in $List     # 空白符将变量分成几个部分。
do
  echo "$a"
done
# one
# two
# three

echo "---"

for a in "$List"   # 在单一变量中保留所有空格。
do #     ^     ^
  echo "$a"
done
# one two three
