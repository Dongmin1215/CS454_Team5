rm ../traces/*
java -jar mts.jar -en ./schedule -gc schedule.c -sf ../testplans.alt/testplans-bigcov/s750 -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator 
