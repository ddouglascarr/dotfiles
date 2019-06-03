#!/bin/bash
#
# USAGE
#   countdown <num of unit> <unit> <msg>
#
# EXAMPLE:
#   countdown 25 minutes "Have a Break!"

timer_length=0
value=$1
unit=$2
msg=$3

case $unit in 

  "s" | "second" | "seconds" )    timer_length=$value
                                  ;;
  "m" | "minute" | "minutes" )    timer_length=$(($value * 60))
                                  ;;
  "h" | "hour" | "hours" )        timer_length=$(($value * 60 * 60))
                                  ;;
  * )                             echo "unknown unit: $unit"
                                  echo "available units: hours, minutes, seconds"
                                  exit 1;
                                  ;;
esac

finished_date=$((`date +%s` + $timer_length))

while [ "$finished_date" -ne `date +%s` ]; do
  timer_remaining=$(($finished_date - `date +%s`))
  echo -ne "$(date --utc --date @$timer_remaining +%H:%M:%S)\r"
  sleep 1
done

notify-send --expire-time=120000 --urgency=critical 'Timer finished' "$msg"
