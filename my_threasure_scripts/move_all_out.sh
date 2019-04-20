#!/bin/bash

src="./"
dst="./"

function read_dir(){
    for file in `ls $1`;do
        if [ -d $1"/"$file ];then
            read_dir $1"/"$file
        elif [ -f $1"/"$file ];then
           # echo $1$"/"$file
            [ `cp $1"/"$file $dst` ]
    #   else echo ".."
        fi
    done
}

read_dir $src
echo "successful!"
#echo $1"  "$2
