#!/bin/bash

#SBS comments...
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write
#. ./copy_config_file.bash 

myself=copy_config_file.bash

#you may double-ck it if not sure
#file $myself

#you may need to re-run this by turn it on
need_convert_2_unix=true
if [ "$my_bool" = true ]; then 
	dos2unix $myself
fi


echo start...

#fileInput=$1
root_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/test_files
fileInput=$root_dir/input_file_1.txt

fileOut=$root_dir/copy_of_input_file_1.txt

cp -p $fileInput $fileOut
#size should not be zero
ls -ltr $fileOut

echo allset...

#never put anything beyond this line