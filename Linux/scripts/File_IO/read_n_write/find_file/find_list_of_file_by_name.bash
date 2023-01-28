#!/bin/bash

export script_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#SBS comments...
#cd $script_dir
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/find_file
#. ./find_list_of_file_by_name.bash 

myself=find_list_of_file_by_name.bash

#you may double-ck it if not sure
#file $myself

#you may need to re-run this by turn it on
need_convert_2_unix=false
if [ "$need_convert_2_unix" = true ]; then 
	dos2unix $myself
fi

recycle_file() {
	var_dir=$script_dir/result
	mkdir -p $var_dir
	export var_result_file=$var_dir/file_cannot_be_found.txt
	touch $var_result_file 
	:> $var_result_file
}

# must define before being invoked
show_find_result(){
        #printf "\n"
	next=$1
	var_file=$2
	if [[ ! -z "$var_file" ]] #test if "$var_file" is NOT empty
	#if test -z "$var_file" #test if "$var_file" is empty
	then
	      #must do something
	      echo ""
	else
	      #echo "$next cannot be found"
	      echo $1 >> $var_result_file
	fi

}

printf "\n\n\n"
echo test start...

root_dir=/mnt/d/jjzALL/myTUT/DevOps/Linux/scripts/File_IO/read_n_write/test_files/list_of_files
root_dir_search=/mnt/d/jjzALL/myTUT/DevOps/Linux

cd $root_dir
touch f1 f1-z f2 f6 f7 f11 

src_file=$root_dir/list_of_file_to_ck.txt
touch $src_file
printf 'f1\nf2\nf3\nf4\nf6\nf12\n' > $src_file 

#recycle_file it before next cycle
recycle_file

for next in `cat $src_file`; do
    #echo "$next"
    var_file=$(find $root_dir_search -iname "$next*")
    #show_find_result #must pass var to fn
    show_find_result $next $var_file
  
done

printf "\n\n\n"
echo show result...
cat $var_result_file

#never put anything beyond this line