recycle_file() {
	var_dir=$script_dir/result
	mkdir -p $var_dir
	export var_result_file=$var_dir/file_cannot_be_found.txt
	touch $var_result_file 
	:> $var_result_file
}
