#!/bin/sh

# kennw: sdorfehs bar!

while :; do
   # Linux
   #BAT="$(cat /sys/class/power_supply/BAT0/capacity)"
   BAT="$(sysctl hw.acpi.battery.life | cut -d ' ' -f 2)"
   echo "$(whoami)@$(hostname)  ${BAT}% "
   sleep 10
done > $HOME/.config/sdorfehs/bar
