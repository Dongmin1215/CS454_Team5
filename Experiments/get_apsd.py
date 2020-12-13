"""
Created on 2020/12/12
@author: Dongmin1215, chanijung, yhpark, nicklee
"""
import numpy as np
import random


def coverage_matrix(dataset):
    path = 'Datasets/' + dataset + '/info/fault-matrix'
    f = open(path, "r")
    l = f.readlines()

    num_faults = int(l[0].split()[0])
    num_tests = int(l[1].split()[0])
    start = num_tests + 2

    matrix = np.empty(num_tests, num_faults)
    dict = {}
    for i in range(num_tests):
        dict[l[2 + i]] = i
        for j in range(num_faults):
            matrix[i][j] = int(l[start + i * (num_faults * 2 + 1) + 2 * (j + 1)].strip())

    return matrix, dict


def isValidLine(x):
    """x값이 주석이나 선언문과 같은 줄과 달리 valid하면 true"""
    return x != -1


# Assume that perm is a list of integers
def get_apsd(dataset, perm):
    ts_values = []
    tc_order = 1
    uncovered_lines = []
    # apsd_cumulative = []

    path = 'Datasets/' + dataset + '/traces'
    for i in perm:  # i is test case number
        zeros = ''.join(['0' for s in range(6 - len(str(i)))])
        file_path = path + "/dump_" + zeros + str(i)
        # print(path)
        f = open(file_path, "r", encoding="ISO-8859-1") # Default utf-8 encoding results in errors
        lines = f.readlines()
        profile = []
        line_count = -5
        for line in lines:
            line_count += 1
            if line[line.find(":") - 1].isdigit():
                profile.append(1)
            elif line[line.find(":") - 1] == "#":
                profile.append(0)
            else:
                profile.append(-1)
        if tc_order == 1:
            uncovered_lines = list(range(len(profile)))
        f.close()
        for j in uncovered_lines:  # j is line number
            bit = profile[j]
            if bit:
                ts_values.append(tc_order)
                uncovered_lines.remove(j)  # Will not check the cover of this line anymore\
        tc_order += 1

        # apsd = 1- sum(ts_values)/((tc_order-1)*len(profile)) + 0.5/(tc_order-1)
        # apsd_cumulative.append(apsd)
    valid_profile = [x for x in profile if isValidLine(x)]
    apsd = 1 - sum(ts_values) / ((tc_order - 1) * len(valid_profile)) + 0.5 / (tc_order - 1)
    # print("real coverage: " + str((len(profile)-len(uncovered_lines))/len(valid_profile)))
    return apsd
