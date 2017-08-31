# !/bin/bash

current_dir=$(pwd)
label_dir=${current_dir}"/DstLabels"

for file in ${label_dir}"/*"
do
	echo ${file}
	sed -i '{s/^Car/0/;s/^Van/1/;s/^Truck/2/;s/^Pedestrian/3/;s/^Person_sitting/4/;s/^Cyclist/5/;s/^Tram/6/;s/^Misc/7/;s/^DontCare/8/}' ${file}
	
done