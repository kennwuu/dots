#!/bin/sh

# kennw: good enough zelbar script

while true; do
    date=$(date '+%a %d %b %I.%M%p')
    bat="$(cat /sys/class/power_supply/BAT0/capacity)%"
    disp="$(brightnessctl | grep -Po "\d+(?=%)")%"
    vol="$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)%"
    echo "%{l} bat[$bat] %{c}%{B:0x80a0ad}%{F:0x062229} $date %{r} snd[$vol] disp[$disp] "
    sleep 1
done | zelbar -btm -fn "Mx437 NEC APC3 8x16:pixelsize=16" -B 0x062229 -F 0xe5e8e6 -L 1
