#!/bin/bash
set -e

CSV=$(< "./data/data.csv")

for thetruth in ${CSV} ;
  do
      echo "$thetruth" | grep -i true | awk '{print $1;}' | cut -d',' -f1;
  done | awk '{total += $1} END {print total " is the total truth and nothing but the truth"}' ;

exit