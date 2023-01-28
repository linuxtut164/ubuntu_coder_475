#!/bin/bash

script_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#SBS comments...
#cd $script_dir
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#. ./find_list_of_file_by_name.bash 

myself=find_list_of_file_by_name.bash

#you may double-ck it if not sure
#file $myself

#you may need to re-run this by turn it on
need_convert_2_unix=true
if [ "$need_convert_2_unix" = true ]; then 
	dos2unix $myself
fi

printf "\n\n\n"
echo test start...

#never put anything beyond this line