rm ../traces/*
java -jar mts.jar -en ./tot_info -gc tot_info.c -sf ../testplans.alt/testplans-bigcov/s865 -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator 
