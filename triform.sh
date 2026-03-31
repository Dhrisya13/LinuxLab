if [ $# -ne 3 ]
then
  echo "syntax is $0 <a> <b> <c>" 

  exit 1
fi
a=$1 
b=$2 
c=$3 
if [ $a -gt $b ]
then 
  temp=$a
    a=$b
    b=$temp
fi
if [ $b -gt $c ]
then
  temp=$b
     b=$c
     c=$temp
fi 
if [ $a -gt $c ]
then
  temp=$a 
  a=$b
  b=$temp
fi
if [ `expr $a + $b` -gt $c ]
then 
  echo "Triangle can be formed"
else
  echo "Triangle cannot be formed"

exit 1
fi
if [ $a -eq $b -a $b -eq $c ]
then
   echo "Equilateral triangle"
elif [ $a -eq $b -o $b -eq $c -o $a -eq $c ]
then
   echo "Isosceles Triangle"
elif [ $((a*a + b*b)) -eq $((c*c)) ]
then
   echo "Right angeled Triangle"
elif [ $a -ne $b -a $b -ne $c -a $a -ne $c ]
then
echo "Normal triangle"
fi
exit 0

 
