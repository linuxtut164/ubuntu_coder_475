#!/bin/bash

#SBS comments...
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write
#. ./read_each_line.bash 

myself=read_each_line.bash

#you may double-ck it if not sure
#file $myself

#you may need to re-run this by turn it on
need_convert_2_unix=false
if [ "$my_bool" = true ]; then 
	dos2unix $myself
fi




echo start...

#fileInput=$1
root_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/test_files
fileInput=$root_dir/input_file_1.txt

fileOut=$root_dir/out_file_1.txt

#what are you doing here
#IFS=$'\n'

printf "\n\n\n";
#creat $fileOut if not there yet
touch $fileOut
:> $fileOut

#size should be zero
ls -ltr $fileOut

for next in `cat $fileInput`; do
    #one way - not echoing
    `echo "output-to-$next" >> $fileOut`
done


printf "\n\n\n";
for next in `cat $fileOut`; do
    #echo "$next"; 
done

#or just do
cat $fileOut

#never put anything beyond this line