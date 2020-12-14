#!/bin/bash

## array of datasets
declare -a arr=("printtokens2" "tcas" "totinfo" "printtokens" "schedule" "schedule2")

## loop!
for i in "${arr[@]}"
do
	python main.py -d "$i"
done

exit 1