dir=~/Desktop/db
for entry in "$dir"/*
do
  echo "$entry"
done
echo
yourfilenames=`ls ./*.*`
for eachfile in $yourfilenames
do
   echo $eachfile
done
echo
ls -d -- */
