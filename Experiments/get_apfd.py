"""
Created on 2020/12/12
@author: nicklee
"""

import numpy as np
from os import listdir
from os.path import isfile, join
import pandas as pd


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

    num_faults = int(l[0].split()[0])  # number of faulty versions
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
        dict[tmp] = i  # Maps the serial number and the exact name of testcases.
        for j in range(num_faults):
            matrix[i][j] = int(l[start + i * (num_faults * 2 + 1) + 2 * (
                        j + 1)].strip())  # 0 or 1 for certain pair of testcase and faulty version

    return matrix, dict


def fault_matrix_linux(dataset, suite, num_faults_dict):
    # print('** Start fault_matrix_linux() **')
    # print(f'dataset in fml(): {dataset}')

    num_tests_dict = {'flex': {1: 21, 2: 525}, 'grep': {1: 193, 2: 152, 3: 140}, 'gzip': {1: 211},
                      'sed': {1: 36, 2: 360}}

    # Build test case dict
    # print('*** Build test case dict ***')
    path = 'Datasets/linux_utils/linuxutils/coverage_singlefault/' + dataset + '/s' + str(suite)
    pkl_files = [f for f in listdir(path) if isfile(join(path, f)) and f[0] == 'v']
    pkl_files.sort()
    pkl = pkl_files[0]
    # print(f'sample pkl: {pkl}')
    df = pd.read_pickle(path + "/" + pkl)
    tests = df.columns
    num_tests = num_tests_dict[dataset][suite]
    test_dict = {}
    for i in range(num_tests):
        test_dict[tests[i]] = i
    # print(f'test_dict: {test_dict}')

    # Build matrices
    # print('*** Build matrices ***')
    path = 'Datasets/linux_utils/linuxutils/failing_tests_singlefault/' + dataset + '/s' + str(suite)
    # print(f'suite: {suite}')
    # print(f'path: {path}')
    dump_files = [f for f in listdir(path) if isfile(join(path, f)) and f[0] == 'v']
    dump_files.sort()
    # print(f'dump files: {dump_files}')
    num_faults = len(dump_files)
    # print(f'num_faults: {num_faults}')

    ##Initialize matrices
    # print('** Initialize matrices **')
    matrices = {}
    for ver in num_faults_dict[dataset][suite].keys():
        matrix = np.zeros([num_tests, num_faults_dict[dataset][suite][ver]])
        matrices[ver] = matrix

    ##Fill in the matrices
    # print('** Fill in the matrices **')
    fault_count = 0
    ver = '0'
    for i in range(num_faults):
        dump = dump_files[i]
        # print(f'faulty version: {dump}')
        if dump[1] != ver:
            fault_count = 0
        ver = dump[1]
        # print(f'ver: {ver}')
        # print(f'fault count: {fault_count}')
        f = open(path + "/" + dump, "r", encoding="ISO-8859-1")
        for l in f.readlines():
            test = l.strip()
            # print(f'failed test: {test}')
            if test_dict.get(test) == None:
                print(f'keyerror with {test} : {dataset} s{suite} ver{ver} ')
            matrices[ver][test_dict[test]][fault_count] = 1
        fault_count += 1
    # print(f'matrices:\n{matrices}')
    # if dataset=='flex':
    # print(f"here {dataset}")
    # print(matrices['1'])
    # print(matrices['1'][test_dict['t20'], 3])
    # print('** End fault_matrix_linux() **')

    return matrices, test_dict


def perm_to_str(perm, dataset, suite):
    """
    :param perm:
    :param dataset:
    :param suite:
    :return: list of test script names that corresponds to the given permutation 
    """
    if dataset != 'space' or dataset != 'sed':
        suite_path = 'Datasets/' + dataset + '/testplans.alt/testplans-bigcov/' + suite
    else:
        # suite_path = 'Datasets/' + dataset + '/testplans.alt/testplans.cov/' + suite
        suite_path = 'Datasets/' + dataset + '/testplans.alt/testplans-bigcov/' + suite

    f = open(suite_path, "r", encoding="ISO-8859-1")  # Default utf-8 encoding results in errors
    cases = f.readlines()

    result = []
    for i in perm:
        if i - 1 > len(cases) - 1:
            print(f'num cases: {len(cases)}')
            print(f'i = {i}')
        case = cases[i - 1]
        case = case[case.find("[") + 1: case.find("]")]
        if "/" in case:
            case = case[case.rfind("/") + 1:]
        if "<" in case:
            case = case[case.rfind("<") + 2:]
        result.append(case)

    return result


def get_apfd(matrix, test_dict, dataset, suite, perm, isLinux=False):
    """
    :param matrix:
    :param test_dict:
    :param dataset:
    :param suite:
    :param perm:
    :return:
    """
    # print('** Start get_apfd() **')

    # print(f'perm: {test_suite[:10]}')

    num_cases = matrix.shape[0]
    num_faults = matrix.shape[1]
    # print(f'num_cases: {num_cases}, num_faults:{num_faults}')
    TFs = np.zeros(num_faults)

    if isLinux:
        test_suite = perm
        i = 1
        for case in test_suite:
            if np.prod(TFs) > 0:
                break
            for j in range(num_faults):
                if TFs[j] == 0 and matrix[case - 1][j] != 0:
                    TFs[j] = i
                    # print(f'TFs[{j}] = {i}')
            i += 1
    else:
        test_suite = perm_to_str(perm, dataset, suite)
        i = 1
        for case in test_suite:
            if np.prod(TFs) > 0:
                break
            for j in range(num_faults):
                if TFs[j] == 0 and matrix[test_dict[case]][j] != 0:
                    TFs[j] = i
            i += 1

    # print('test10: ',test_dict['test10'])
    # print('test39: ',test_dict['test39'])
    # print('test36: ', test_dict['test36'])
    apfd = 1 - sum(TFs) / (num_cases * num_faults) + 0.5 / num_cases
    # print(f'apfd = {apfd}')

    # print("real coverage: " + str((len(profile)-len(uncovered_lines))/len(valid_profile)))
    # print('** End get_apfd() **')
    return apfd


if __name__ == '__main__':
    print(perm_to_str([1, 2, 3, 4, 5], 'printtokens', 's50'))
