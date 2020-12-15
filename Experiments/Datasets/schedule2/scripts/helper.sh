rm ../traces/*
java -jar mts.jar -en ./schedule2 -gc schedule2.c -sf ../testplans.alt/testplans-bigcov/s202 -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator 
