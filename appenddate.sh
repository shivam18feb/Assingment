#!/bin/bash -x

for files in `ls *.log.1`
do
       basename=`echo "$file | awk -F. '{print $1}'`
       don=`echo "file" | awk -F. '{print $2}'`
       echo "$basename"
       dates_=`date +%d%m%Y`
       basename+="-$dates_.$don"
       mv $file $basename
done
