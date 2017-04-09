#!/bin/bash
#
# z3bra - (c) wtfpl 2014
# Fetch infos on your computer, and print them to stdout every second.

clock() {
    date '+%d-%m-%Y %H:%M'
}

battery() {
    BATC=/sys/class/power_supply/BAT1/capacity
    BATS=/sys/class/power_supply/BAT1/status

    test "`cat $BATS`" = "Charging" && echo -n '+' || echo -n '-'

    sed -n p $BATC
}

volume() {
    amixer get Master | sed -n 'N;s/^.*\[\([0-9]\+%\).*$/\1/p'
}

cpuload() {
    LINE=`ps -eo pcpu |grep -vE '^\s*(0.0|%CPU)' |sed -n '1h;$!H;$g;s/\n/ +/gp'`
    bc <<< $LINE
}

memused() {
    LINE=`free -mh | egrep '^Mem:' | awk '{print $3}'`
    echo $LINE
}

groups() {
    cur=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
    tot=`xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}'`

    for w in `seq 0 $((cur - 1))`; do line="${line}="; done
    line="${line}|"
    for w in `seq $((cur + 2)) $tot`; do line="${line}="; done
    echo $line
}

# This loop will fill a buffer with our infos, and output it to stdout.
while :; do
    buf="%{r %{#dedede}"
    buf="${buf} [$(groups)]   --  "
    buf="${buf} CPU: $(cpuload)% -"
    buf="${buf} RAM: $(memused) -"
    buf="${buf} VOL: $(volume) "
    buf="${buf} [$(clock)]"

    echo $buf
    # use `nowplaying scroll` to get a scrolling output!
    sleep 2 # The HUD will be updated every second
done


