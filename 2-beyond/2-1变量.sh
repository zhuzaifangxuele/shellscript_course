

gaochong@gaochong-PC:~/Desktop$ echo "$IFS" | cat -vte
@$
gaochong@gaochong-PC:~/Desktop$ for i in "a@b@c@d";do echo $i;done
a b c d


