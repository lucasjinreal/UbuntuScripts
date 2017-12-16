# !/bin/bash
# this script generate list file contation
# image_index class_index image_name
data_root_dir="/media/work/jfg/MxnetSpace/mxnet_classification/train"
map_file="map_class_index.txt"

dst_all_list="all_list.txt"
if [ -f ${dst_all_list} ]; then
	:> ${dst_all_list}
fi


if [ -f ${map_file} ]; then
	echo "reading map file..."
	echo ${map_file}
	declare -A map_dict

	while read line
	do
		echo ${line}
		echo `echo ${line}|cut -d " " -f 1`
		echo `echo ${line}|cut -d " " -f 2`
		key=`echo ${line}|cut -d " " -f 1`
		value=`echo ${line}|cut -d " " -f 2`
		map_dict[ ${key} ]=${value}
	done < ${map_file}
else
	echo "map file not find..."
fi

echo ${map_dict[*]}
echo ${!map_dict[*]}
echo ${map_dict[ elephant ]}

j_cout=0
for element in ${data_root_dir}/*
do
	if [ -f ${element} ]; then
		echo "error, all images must in various folders."
	fi

	if [ -d ${element} ]; then
		i=0
		for f in ${element}/*
		do
			class=`basename ${element}`
			image_name=`basename ${f}`
			echo $i" "${map_dict[ ${class} ]}" "${class}/${image_name} >> ${dst_all_list}
			((i=i+1))
			((j_cout=j_cout+1))
		done
	fi
done

echo "done!solved "${j_cout}" images,find "${#map_dict[*]}" class"
