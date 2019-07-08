#!/bin/bash
#Program:
#      This program test weather the filename users inputed exist or not and test mods of the file.
#History:
#2019/07/08 rock First release
PATH=/bin:/usr/bin:/use/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "Pleasr input filename your wanting:" filename
test -z $filename && echo "You must input a filename" && exit 0
test ! -e $filename && echo "The file '$filename' does not exit" && exit 0
echo "Adress of inputing file is '$(find -name $filename )'" 
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executabel"
echo "The input file '$filename' is a '$filetype'"
echo "Your perm on this file are '$perm'"
exit 0


