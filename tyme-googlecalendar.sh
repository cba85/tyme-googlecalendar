#!/bin/bash

##
# README
#
# Convert a csv file from Tyme exportation in csv file for Google Calendar.
# First, export your Tyme datas in a csv file.
# Then, launch the script : sudo sh /path/to/tyme-googlecalendar.sh [tyme_export_csv_filename]
# When it's done, import the csv file created on Google Calendar.
# Google Calendar importing : https://support.google.com/calendar/answer/37118
#
# More informations on the Github repository : https://github.com/cba85/tyme-googlecalendar
##

##
# CONFIGURATION
##

FILE=$1
FILENAME=google_calendar_time_tracker.csv

if test $# -eq 1
  then

  if [ -f $FILE ];
  then

  ##
  # INITIALISATION
  # Remove previous files
  ##

  rm -rf $FILENAME

  ##
  # INITIALISATION CSV FILE LECTURE
  ##

  OLDIFS=$IFS
  IFS=";"
  COUNT=0

  ##
  # READ TYME CSV FILE
  ##

  while read ttype date unix_start unix_end day start end category project task subtask amount amount_decimal note sum rounding_minutes rounding_method note
    do
      # JUMP FIRST LINE
      COUNT=$(( $COUNT + 1 ))
      if [ $COUNT = 1 ];
      then
        # GOOGLE CALENDAR HEADER CREATION
        echo "Subject,Start Date,Start Time,End Date,End Time,All day event,Description,Location" >> $FILENAME
      else
        # CONVERT UNIX TIMESTAMPS IN DATES
        DATE_START=$(date -r $unix_start +'%Y-%m-%d')
        DATE_END=$(date -r $unix_end +'%Y-%m-%d')
        # WRITE TIME TRACKING
        echo "[$project] $task,$DATE_START,$start:00,$DATE_END,$end:00,,$note," >> $FILENAME
      fi
    done < $1

  ##
  # END CSV FILE LECTURE
  ##

  IFS=$OLDIFS

  ##
  # CONVERSION DONE
  ##

  echo -e "\033[1m\033[32mTyme csv file export converted in Google Calendar csv files\033[0m"
  echo -e "\033[1m\033[36m--> $FILENAME\033[0m"

  else
     echo -e "\033[31m[ERROR] Tyme CSV file does not exist\033[0m";
  fi

  # ARGUMENTS NUMBER ERROR
  else
    echo -e "\033[31m[ERROR] Tyme CSV filename argument is missing\033[0m";
    exit 1;

fi
