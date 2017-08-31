## Ubuntu Problems That Are Cares
* Fix encode problem
```
iconv -f GBK -t UTF-8 zhongwen.txt > right.txt
```

* find directory whether has a "string" in all files

```
find .|xargs grep -ri "string"
```

and print file name contaions that

```
find .|xargs grep -ri "string" -l
```

## Awesome ubuntu terminal software
No.1 tmux
this is terminal enhance we can split many terminal in only one window, it is very convenient

No.2 ranger
gusses what is this about? Hard to believe this is a terminal file expoler and it's more convient than window one!

No.3 tpp
another awesome geekable thing. Show your presentation in terminal!

No.4 xdotool
using this you can do anything with program rather your hands!
this pakage can simulate mouse click and typing!

sh of screen record, install byzanz first
```
#!/bin/bash

# Example: byzanz-record-window 30 -c output.gif

# Delay before starting
DELAY=5

# Duration and output file
if [ $# -gt 0 ]; then
    D="--duration=$@"
else
    echo Default recording duration 5s to /tmp/recorded.gif
    D="--duration=10 /tmp/recorded.gif"
fi
XWININFO=$(xwininfo)
read X < <(awk -F: '/Absolute upper-left X/{print $2}' <<< "$XWININFO")
read Y < <(awk -F: '/Absolute upper-left Y/{print $2}' <<< "$XWININFO")
read W < <(awk -F: '/Width/{print $2}' <<< "$XWININFO")
read H < <(awk -F: '/Height/{print $2}' <<< "$XWININFO")

echo Delaying $DELAY seconds. After that, byzanz will start
for (( i=$DELAY; i>0; --i )) ; do
    echo $i
    sleep 1
done

byzanz-record --verbose --delay=0 --x=$X --y=$Y --width=$W --height=$H $D
```
