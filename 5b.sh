if [ $# -eq 0 ]
then
echo "argument not entered"
else
ls -l $1>t5
x=`cut -c 23-38 t5`
echo $x
fi
