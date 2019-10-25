#!/bin/bash 

CURRENT_YEAR=`date +"%Y"`
CURRENT_MONTH=`date +"%m"`
CURRENT_DAY_OF_MONTH=`date +"%d"`

if [ "$CURRENT_MONTH" -gt "03" ]; then
  NEXT_YEAR=$((CURRENT_YEAR+1))
elif ["$CURRENT_MONTH" -eq "03" ]; then
  if ["$CURRENT_DAY_OF_MONTH" -gt "20" ]; then
    NEXT_YEAR=$((CURRENT_YEAR+1))
  fi
else
  NEXT_YEAR=$CURRENT_YEAR
fi

FIRST_DAY_OF_SPRING=$(date -u -d "$NEXT_YEAR-03-20 00:00:00" '+%F %T.%N %Z')

SPRING_SECONDS=($(date -d "$FIRST_DAY_OF_SPRING" "+%s"))
TODAY_SECONDS=($(date -d "today" "+%s"))
SECONDS_DIFF=$((SPRING_SECONDS-TODAY_SECONDS))

DAYS_TO_SPRING=$((SECONDS_DIFF/60/60/24))
echo "There are $DAYS_TO_SPRING days until Spring"