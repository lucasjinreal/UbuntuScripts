### Faster scp
```
rsync -P rsh=ssh file.zip jfg@172.23.150.75:~/Documents
```
permenant add alias
```
alias scpr="rsync -P --rsh=ssh"
```
you can use scpr replace scp, more faster for big files.

### Count File Number
`grep '^-'` means find all files not include dirs, `wc -l` meas count lines

```
ls -l|grep '^-'|wc -l
```

### Find any string in all files under current dir
the is a very **useful command**:
```
find .|xargs grep -ri "ReadProtoFromTextFile" -l 
```
this means I am going find `ReadProtoFromTextFile` in all files under current dir, and it will output filenames that contains this string!

