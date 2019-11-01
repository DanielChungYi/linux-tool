#!/bin/bash

counts=0
string=jpg
for filename in `ls /home/user/daniel_ws/learnopencv/downloadOpenImages/train/Person`
do
   #echo $filename
   ext="${filename##*.}"
   #echo $ext
   var=`expr index "$string" $ext`
   if [ $var -gt 0 ]
   then
       cp /home/user/daniel_ws/learnopencv/downloadOpenImages/train/Person/$filename /home/user/daniel_ws/library_data/images/train/
       echo "$filename" 
       counts=`expr $counts + 1`
   else
       echo "i am not jpg"
   fi
   echo $counts
   #echo "cp to (b) $filename"
   #if ["$ext" = 'jpg'];
   #then
      #echo $ext
      #cp /home/user/daniel_ws/learnopencv/downloadOpenImages/train/Person/$filename /home/user/daniel_ws/library_data/images/train/
   #fi 
done
# file name example 
#fullfilename=$1
#filename=$(basename "$fullfilename")
#fname="${filename%.*}"
#ext="${filename##*.}"

#echo "Input File: $fullfilename"
#echo "Filename without Path: $filename"
#echo "Filename without Extension: $fname"
#echo "File Extension without Name: $ext"
