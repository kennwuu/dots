#!/bin/sh

# kennw: hello. i think this sucks.

while :; do
   DATE="$(date '+%a %d %b')"
   VOL="vol: $(amixer sget 'PGA1.0 1 Master' | grep -oE '[0-9]+%' | head -1)"
   # hacky? ^^^
   BAT="bat: $(cat /sys/class/power_supply/BAT0/capacity)%"
   # FreeBSD
   #BAT="bat: $(sysctl hw.acpi.battery.life | cut -d ' ' -f 2)%"
   echo "%{l} $BAT %{c}$DATE %{r}$VOL "
   sleep 1
done | lemonbar -p -f "MxPlus IBM VGA 8x16:size=12" \
-n bar -u 2 -B#f2f3f5 -F#3a323d