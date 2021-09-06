#!/bin/bash

battery_info=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep percentage | awk '{print $2}')

date_formatted=$(date "+%a %F %H:%M")

echo "${date_formatted} | ${battery_info}"

