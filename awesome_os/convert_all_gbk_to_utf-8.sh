#!/bin/bash
### 将 values_here 替换为输入编码
FROM_ENCODING="GBK"
### 输出编码 (UTF-8)
TO_ENCODING="UTF-8"
### 转换命令
CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"
### 使用循环转换多个文件
for  file  in  `ls`; do
    if [ ${file##*.} = "txt" ]; then
        echo $file
        $CONVERT   "$file"   >  "${file}.utf8"
    fi
done
exit 0
