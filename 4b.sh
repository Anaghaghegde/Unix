file=$1
set --`ls -l $file`
lcnt=$2
if [ $lcnt -eq 1 ]
then
echo "no other links"
exit 
else
set --`ls -i $file`
inode=$1
find "." -xdev -inum $inode-print
fi
