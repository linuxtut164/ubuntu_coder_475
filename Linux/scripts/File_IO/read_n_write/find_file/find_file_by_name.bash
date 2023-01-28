#!/bin/bash

script_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#SBS comments...
#cd $script_dir
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#. ./find_file_by_name.bash 

myself=find_file_by_name.bash

#you may double-ck it if not sure
#file $myself

#you may need to re-run this by turn it on
need_convert_2_unix=true
if [ "$my_bool" = true ]; then 
	dos2unix $myself
fi

printf "\n\n\n"
echo test start...

root_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/test_files/list_of_files
root_dir_search=/mnt/d/jjzALL/myTUT/DevOps/Linux

cd $root_dir
touch f1 f1-z f2 f6 f7

var_file=""
#unset not harm
unset var_file
var_file=$(find $root_dir_search -iname "f1*")
#echo found - $var_file

#no need to reset
#$var_file=""
#unset var_file
#echo found - $var_file

var_file=$(find $root_dir_search -iname "f4*")
echo found - $var_file

if [[ ! -z "$var_file" ]] #test if "$var_file" is NOT empty
#if test -z "$var_file" #test if "$var_file" is empty
then
      echo "f4 is NOT empty"
else
      echo "f4 is empty"
fi

echo allset...
cd $script_dir

#never put anything beyond this line