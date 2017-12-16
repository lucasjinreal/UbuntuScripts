# !/bin/bash

# map all images into labels with same filename 00001.jpg -> 00001.txt
current_dir=`pwd`
des_dir=${current_dir}"/labels"
echo $des_dir
if [ ! -d "${des_dir}" ]; then
	mkdir ${des_dir}
fi

for line in `cat imglist`
do
	file_name=${line%.*}
	echo ${file_name}
	touch ${des_dir}"/"${file_name}".txt"
done


