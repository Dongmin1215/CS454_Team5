rm ../traces/*
java -jar mts.jar -en ./print_tokens2 -gc print_tokens2.c -sf ../testplans.alt/testplans-bigcov/s169 -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator 
