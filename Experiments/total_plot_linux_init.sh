#!/bin/bash

## array of datasets
# declare -a arr=("flex" "grep" "gzip" "sed")
# declare -a arr=("flex")

declare -a arr=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 16)
# declare -a arr=(1 2 3)

## loop!
for i in "${arr[@]}"
do
	python3.6 main_linux.py -d flex -init $i&
	python3.6 main_linux.py -d sed -init $i&
#	python main_linux.py -d "$i" -n 5 &
done

exit 1