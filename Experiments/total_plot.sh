#!/bin/bash

## array of datasets
declare -a arr=("printtokens2" "tcas" "totinfo" "printtokens" "schedule" "schedule2")
# declare -a arr=("schedule" "schedule2")
# declare -a arr=("printtokens")

## loop!
for i in "${arr[@]}"
do
	python3 main.py -d "$i" -n 1000 &
done

exit 1