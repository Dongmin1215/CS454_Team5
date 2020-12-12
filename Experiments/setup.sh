#!/bin/bash

filename="asdf"

echo "$filename"
exit

cd Siemens/"$filename" || exit

# Build the c file
cd scripts || exit
gcc -ftest-coverage -fprofile-arcs -Wall "$filename".c -o "$filename"

# Build testme.sh
java -jar mts.jar -en ./"$filename" -gc "$filename".c -sf ../testplans.alt/testplans-rand/"$suite" -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator

# Execute testme.sh
sh testme.sh