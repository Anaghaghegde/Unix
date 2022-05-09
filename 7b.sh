if [ $# -lt 2 ]
then
echo "usage:wordcount wordfile file1 file2 ....."
exit
fi
for word in `cat $1`
do
for file in $*
do
if [ "$file" != "$1" ]
then
echo "the world frequency of --$word--in file $file is : `grep -iow "$word" $file | wc -w`"
fi
done
done
