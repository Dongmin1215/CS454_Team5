# Experiments (for reproducing results)

> Junghyun Lee, Dongmin Lee, Chani Jung, and Yoo Hwa Park
> 
> 
---
## Instructions on running experiments
This has been tested successfully on the following test suites:
- printtokens
- printtokens2
- schedule
- schedule2
- space
- tcas
- totinfo

### Part 1: Setting up the datasets (do for all datasets)
1. Unpack ../Datasets/DATASET.tar.gz and ../testplans.alt/testplans-bigcov.tar.gz, for **ALL** datasets.
2. Run `parse_suite.py`
3. Move the main program files (.c, .h) from ../source.alt/source.orig to ../scripts
4. Run the following command in ../scripts:
```console
gcc -ftest-coverage -fprofile-arcs -Wall PROGRAM.c -o PROGRAM
```
For printtokens and printtokens2, PROGRAM should be *print_tokens* and *print_tokens2*, respectively!
5. Copy mts.jar from ../Datasets into ../scripts
6. Run the following command in ../scripts:
```console
java -jar mts.jar -en ./PROGRAM -gc PROGRAM.c -sf ../testplans.alt/testplans-bigcov/SUITE -sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator
```
**Remember** which test suite(SUITE) you've used to reproduce our results accurately.
7. Run the following command in ../scripts:
```console
sh testme.sh
```
If directory error occurs, it is most likely that mts.jar parsed the testme.sh wrongly.
Use any text editor to manually edit the testme.sh, for now.
(For schedule and schedule2, one needs to replace all occurences of input with ../input)

### Part 2: Running SWAY
7. Run the following command in ../Experiments with the desired options:
```console
python tcp_sway.py -d DATASET -suite SUITE -e EMBEDDING
```
(Above are required options. For more optional options, see below)

---
## Descriptions of each file

`parse_suite.py` 

* wraps `-P` or `-I` depending on the way of indicating directory in suite file

* Input example : `suite1`
* Output example : `s1`

`get_apsd.py` 

*
* Input example : 
* Output example : 

`get_apfd.py` 

*
* Input example : 
* Output example : 

`embedding.py` 

* 
* Input example : 
* Output example : 

`tcp_sway.py` 

* 
* Input example : 
* Output example : 

---
## To-Do
- [ ] Currently, there are unparsable characters that we've preprocessed out (e.g. "["-->"0"). Is there some way to not do this and still run the experiments?
  (Due to this issue, replace cannot be tested.)
- [ ] Automate the running experiments section using shell script
- [ ] Extend the support of this to non-Siemens test suites (ex. space, sed)
- [ ] Implement genetic algorithm-based TCP to be compared with our SWAY-based approach
- [ ] Fix arg parsing to be more "robust"
- [ ] Fix mts.jar for other test suites...