# !/bin/bash

# this scripts convert original KITTI txt label into what we want in SSD
all_labels=`ls|grep '.txt'`
current_dir=`pwd`

dst_dir=${current_dir}"/DstLabels/"
if [ ! -d dst_dir ]
	then
	echo "creating dir.."
	mkdir ${dst_dir}
else 
	echo "destination file aready exist."
fi

for file in ./label_2/*
do
	echo ${file}
	echo ${file:10}
	cut -d ' ' -f 1,5,6,7,8 ${file} > ${dst_dir}${file:10}
done
echo "done!"