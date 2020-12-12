"""
Created on 2020/12/12
@author: nicklee

dataset: name(str) of the benchmark used
perm: permutation(list of int)
"""

import numpy as np


def fault_matrix(dataset):
    """

    Args:
        dataset:

    Returns:
        fault matrix of size num_faults x num_tests
        dict of test case name: index
    """
    path = dataset + '/info/fault-matrix'
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


def perm_to_str(perm, suite):


def get_apfd(dataset, perm):
    """

    Args:
        dataset:
        perm:

    Returns:

    """
    ts_values = []
    tc_order = 1
    uncovered_lines = []
    for i in perm:  # i is test case number
        zeros = "00000" if i < 10 else "0000"
        path = dataset + "/traces/" + "dump_" + zeros + str(i)
        # print(path)
        f = open(path, "r")
        lines = f.readlines()
        profile = []
        line_count = -5
        for line in lines:
            line_count += 1
            if line[line.find(":") - 1].isdigit():
                profile.append(1)
            else:
                profile.append(0)
        # print(profile)
        if tc_order == 1:
            uncovered_lines = list(range(len(profile)))
        f.close()
        for j in uncovered_lines:  # j is line number
            bit = profile[j]
            if bit:
                ts_values.append(tc_order)
                uncovered_lines.remove(j)  # Will not check the cover of this line anymore\
        tc_order += 1
    # print(f'ts_values: {ts_values}')
    # print(f'uncovered_lines: {uncovered_lines}')
    # print(f'tc_order: {tc_order}')
    apsd = 1 - sum(ts_values) / ((tc_order - 1) * len(profile)) + 0.5 / (tc_order - 1)
    return apsd
