#!/bin/bash -x

for files in  `ls *.txt`;
do 
       foldername=`echo "files" | awk -F. '{print $1}'`;
       if [  -d $foldename ]
       then
            rm -r $foldername
       fi
       mkdir  $foldername
       mv $files $foldername
echo "files move"
done

