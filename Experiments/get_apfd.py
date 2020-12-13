"""
Created on 2020/12/12
@author: nicklee
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
    path = 'Datasets/' + dataset + '/info/fault-matrix'
    f = open(path, "r")
    l = f.readlines()

    num_faults = int(l[0].split()[0])
    num_tests = int(l[1].split()[0])
    start = num_tests + 2

    matrix = np.empty([num_tests, num_faults])
    dict = {}
    for i in range(num_tests):
        tmp = l[2 + i].strip()
        if "/" in tmp:
            tmp = tmp[tmp.rfind("/") + 1:]
        if "<" in tmp:
            tmp = tmp[tmp.rfind("<") + 2:]
        dict[tmp] = i
        for j in range(num_faults):
            matrix[i][j] = int(l[start + i * (num_faults * 2 + 1) + 2 * (j + 1)].strip())

    return matrix, dict


def perm_to_str(perm, dataset, suite):
    """

    :param perm:
    :param dataset:
    :param suite:
    :return:
    """
    if dataset != 'space' or dataset != 'sed':
        suite_path = 'Datasets/' + dataset + '/testplans.alt/testplans-bigcov/' + suite
    else:
        suite_path = 'Datasets/' + dataset + '/testplans.alt/testplans.cov/' + suite

    f = open(suite_path, "r", encoding="ISO-8859-1")  # Default utf-8 encoding results in errors
    cases = f.readlines()

    result = []
    for i in perm:
        case = cases[i - 1]
        case = case[case.find("[") + 1: case.find("]")]
        if "/" in case:
            case = case[case.rfind("/") + 1:]
        if "<" in case:
            case = case[case.rfind("<") + 2:]
        result.append(case)

    return result


def get_apfd(matrix, dict, dataset, suite, perm):
    """

    :param matrix:
    :param dict:
    :param dataset:
    :param suite:
    :param perm:
    :return:
    """
    test_suite = perm_to_str(perm, dataset, suite)
    num_cases = matrix.shape[0]
    num_faults = matrix.shape[1]
    TFs = np.zeros(num_faults)
    # print(dict)

    i = 1
    for case in test_suite:
        if np.prod(TFs) > 0:
            break
        for j in range(num_faults):
            if TFs[j] == 0 and matrix[dict[case]][j] != 0:
                TFs[j] = i
        i += 1

    apfd = 1 - sum(TFs) / (num_cases * num_faults) + 0.5 / num_cases
    # print("real coverage: " + str((len(profile)-len(uncovered_lines))/len(valid_profile)))
    return apfd


if __name__ == '__main__':
    print(perm_to_str([1, 2, 3, 4, 5], 'printtokens', 's50'))
