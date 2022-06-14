#!/bin/bash

for file in `find -mtime -1`
do
        if [ -d backupfolders ]
        then
               rm -r backupfolders
        fi
        mkdir backupfolders
        cp $file backupfolders
done
