#!/bin/bash

# Example: byzanz-record-window 30 -c output.gif

# Delay before starting
DELAY=5

# Duration and output file
if [ $# -gt 0 ]; then
    D="--duration=$1"
    echo duration $1
    F="/home/jfg/Desktop/$2"
    echo filename $2
else
    echo Default recording duration 5s to /tmp/recorded.gif
    D="--duration=10"
    F="/home/jfg/Desktop/recorded.gif"
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
echo $D
byzanz-record --verbose $D --delay=0 --x=$X --y=$Y --width=$W --height=$H $F
