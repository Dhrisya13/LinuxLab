if [ $# -ne 1 ]
then
  echo "Syntax is $0 <number>"
exit 1
fi
no=$1
temp=$no 
rev=0
while [ $temp -ne 0 ]
do
digit=`expr $temp % 10` 
rev=`expr $rev '*' 10 + $digit` 
temp=`expr $temp / 10`
done
if [ $no -eq $rev ]
then
echo "the number is palindrome"
else
echo "the number is not a palindrome"
fi 
