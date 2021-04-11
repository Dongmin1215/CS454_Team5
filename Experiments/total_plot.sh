#!/bin/bash

## array of datasets
#declare -a arr=("printtokens2" "tcas" "totinfo" "printtokens" "schedule" "schedule2")
# declare -a arr=("schedule" "schedule2")
declare -a arr=("schedule")

## loop!
for i in "${arr[@]}"
do
#	python3.6 main.py -d "$i" &
	python main.py -d "$i" -n 5 &
done

exit 1