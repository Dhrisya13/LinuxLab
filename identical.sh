if [ $# -ne 2 ]
then
echo "syntax is <$0> <file1> <file2>"
exit 1
fi
if [ -f $1 -a -f $2 ]
then
cmp $1 $2 > /dev/null
if [ $? -eq 0 ]
then
echo "$1 is deleted"
else
echo "file $1 and $2 are not same"
fi
else
echo "files are not ordinary file or readable"
fi 
