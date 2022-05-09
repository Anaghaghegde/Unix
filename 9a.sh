if [ $# -eq 3 ] 
then
if [ -e $1 ]
then
if [ $2 -le $3 ]
then
head -n $3 $1 | tail -n +$2
else
echo "enter valid file ,$1 is not a file"
fi
else
echo "enter the required arguments" 
fi
fi
