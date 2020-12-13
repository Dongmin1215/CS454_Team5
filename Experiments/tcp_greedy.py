"""
Created on 2020/12/12
@author: Dongmin1215, chanijung, yhpark, nicklee
"""
import numpy as np
from os import listdir
from os.path import isfile, join


def greedy(dataset):
    path = 'Datasets/' + dataset + '/traces'
    dump_files = [f for f in listdir(path) if isfile(join(path, f))]
    num_tests = len(dump_files)

    #Get the number of valid statements in this program
    sample = open(path+"/"+dump_files[0], "r", encoding="ISO-8859-1")
    lines = sample.readlines()
    num_valid_stats = 0
    for line in lines:
        if line[line.find(":") - 1] != '-':
            num_valid_stats += 1
    print(f'#valid statements: {num_valid_stats}')
    #Build converage matrix
    mat = np.zeros((num_tests, num_valid_stats))
    for test_num in range(1, num_tests+1):  # i is test case number
        zeros = ''.join(['0' for s in range(6 - len(str(test_num)))])
        file_path = path + "/dump_" + zeros + str(test_num)
        f = open(file_path, "r", encoding="ISO-8859-1") # Default utf-8 encoding results in errors
        lines = f.readlines()

        #Make a profile for one test case.
        profile = []
        for line in lines:
            if line[line.find(":") - 1].isdigit():
                profile.append(1)
            elif line[line.find(":") - 1] == "#":
                profile.append(0)
        mat[test_num-1] = np.array(profile)
    # print(f'mat:\n{mat}')

    #Find TCP solution with greedy algorithm
    sol = []
    covered_stats = np.zeros((1,num_valid_stats))
    for i in range(num_tests):
        addit_stats = (mat - covered_stats == 1).astype(int)
        # print(f'diff\n{diff}')
        addit_cov = np.sum(addit_stats, axis=1)
        if np.sum(addit_cov) == 0:
            break
        # print(f'addit_cov:\n{addit_cov}')
        next_test = np.argmax(addit_cov) + 1
        # print(f'next_test:{next_test}')
        covered_stats = (covered_stats + mat[next_test-1] > 0).astype(int)
        # print(f'covered stats\n{covered_stats}')
        print(f'#covered statements:{np.sum(covered_stats)}')
        sol.append(next_test)
    return sol
    # print(f'num tests: {num_tests}')


print("solution: ", greedy("printtokens"))
# greedy("printtokens2")
# greedy("schedule")
# greedy("schedule2")
# greedy("tcas")
# greedy("totinfo")