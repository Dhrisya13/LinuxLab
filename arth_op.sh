if [ $# -ne 3 ]
then
echo "syntax is <$0> <no1> <operator> <no2>"
exit 1
fi
case $2 in
+) ans=`expr $1 + $3` ;;
-) ans=`expr $1 - $3` ;;
x) ans=`expr $1 "*" $3` ;;
/) ans=`expr $1 / $3` ;;
%) ans=`expr $1 % $3` ;;
*) echo "invalid operator" 
esac
echo $ans 
