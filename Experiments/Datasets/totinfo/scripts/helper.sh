rm ../traces/*
java -jar mts.jar -en ./tot_info -gc tot_info.c -sf ../testplans.alt/testplans-bigcov/s205 -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator 
