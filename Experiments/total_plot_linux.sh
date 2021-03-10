#!/bin/bash

## array of datasets
# declare -a arr=("printtokens2" "tcas" "totinfo" "printtokens" "schedule" "schedule2")
# declare -a arr=("schedule" "schedule2")
declare -a arr=("flex" "grep" "gzip" "sed")

## loop!
for i in "${arr[@]}"
do
	python3 main_linux.py -d "$i" -n 1 &
done

exit 1