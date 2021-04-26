"""
Created on 2020/12/14
@author: Dongmin1215, chanijung, yhpark, nicklee

(Description)
"""
from tcp_sway import *
from tcp_greedy import *
from tcp_random import *
from plot_util import *

from get_apfd import *
from get_apsd import *

import os
import fileinput
import time
import argparse
from tqdm import tqdm
import numpy as np
from embedding import embed

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -n NUMBER -e EMBEDDING -init INITIAL -s STOP -min MIN_Y -max MAX_Y
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-n", "--number", help="number of repetitions", type=int, default=30) 
    # parser.add_argument("-n", "--number", help="number of test suites to compute over", type=int, default=500)
    parser.add_argument("-e", "--embedding", help="type of embedding used (1 for non-distortive, 2 for distortive)",
                        type=int, default=2)
    parser.add_argument("-init", "--initial", help="initial number of candidates", type=int, default=18) 
    parser.add_argument("-stop", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=20)
    # parser.add_argument("-iter", "--iteration", help="iteration number of SWAY", type=int, default=1)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0.5)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.0)

    args = parser.parse_args()
    dataset = args.dataset
    n = args.number

    num_faults_dict = {
        'flex': {1: {'1': 12, '2': 8, '3': 6, '4': 8, '5': 5}},
        'grep': {1: {'1': 3, '2': 1, '3': 5, '4': 3}},
        'gzip': {1: {'1': 7, '2': 3, '4': 3, '5': 4}}, 'sed': {1: {'2': 3, '3': 4}}}
        
    suites = num_faults_dict[dataset].keys()
    fault_matrices = {}
    test_dicts = {}
    for suite in suites:
        matrices, test_dict = fault_matrix_linux(dataset, suite, num_faults_dict)
        fault_matrices[suite] = matrices
        test_dicts[suite] = test_dict

    algs = ['SWAY', 'Additional Greedy', 'random']

    # Initial population
    init = 2 ** args.initial

    # apsd_list_random, apfd_list_random, time_list_random = [], [], []
    # apsd_list_greedy, apfd_list_greedy, time_list_greedy = [], [], []
    # apsd_list_sway, apfd_list_sway, time_list_sway = [], [], []

    # for s in tqdm(suites):
    original_ver_dict = {'flex': ['1', '2', '3', '4'], 'grep': ['1', '2', '3'], 'gzip': ['1', '4'], 'sed': ['2']}
    num_tests_dict = {'flex': {1: 21, 2: 525}, 'grep': {1: 193, 2: 152, 3: 140}, 'gzip': {1: 211},
                      'sed': {1: 36, 2: 360}}
    for ver in original_ver_dict[dataset]:
        for suite in suites:
            apsd = np.empty((3, n))
            apfd = np.empty((3, n))
            runtime = np.empty((3, n))

            if dataset == 'grep' and suite == 3 and ver == '3':  # data omitted
                continue
            for i in tqdm(range(n)):
                start_time = time.time()
                res = list(range(1, num_tests_dict[dataset][suite] + 1))
                random.shuffle(res)
                runtime[0][i] = time.time() - start_time
                # time_list_random.append(time.time() - start_time)

                apsd[0][i] = get_apsd_linux(dataset, suite, ver, res)
                # apsd_list_random.append(get_apsd_linux(dataset, suite, ver, res))
                apfd[0][i] = get_apfd(fault_matrices[suite][str(int(ver) + 1)],
                                      test_dicts[suite], dataset, None, res, True)
                # apfd_list_random.append(
                #     get_apfd(fault_matrices[suite][str(int(ver) + 1)], test_dicts[suite], dataset, None, res, True))

                # # Greedy algorithm

                # print("greedy")
                start_time = time.time()
                res = tcp_greedy_linux(dataset, suite, ver)
                runtime[1][i] = time.time() - start_time
                # time_list_greedy.append(time.time() - start_time)

                apsd[1][i] = get_apsd_linux(dataset, suite, ver, res)
                # apsd_list_greedy.append(get_apsd_linux(dataset, suite, ver, res))
                apfd[1][i] = get_apfd(fault_matrices[suite][str(int(ver) + 1)],
                                      test_dicts[suite], dataset, None, res, True)
                # apfd_list_greedy.append(
                #     get_apfd(fault_matrices[suite][str(int(ver) + 1)], test_dicts[suite], dataset, None, res, True))

                # # SWAY for TCP (for 2nd~last version of each program)
                start_time = time.time()
                # TCP for the (ver+1)th program version
                res, can = tcp_sway(dataset, suite, ver, init, args.stop, args.embedding)

                runtime[2][i] = time.time() - start_time
                # time_list_sway.append(time.time() - start_time)

                tmp_apsd, tmp_apfd = [], []
                for perm in res:
                    tmp_apsd.append(get_apsd_linux(dataset, suite, ver, perm))
                    tmp_apfd.append(
                        get_apfd(fault_matrices[suite][str(int(ver) + 1)], test_dicts[suite], dataset, None, perm,
                                 True))
                idx = tmp_apsd.index(max(tmp_apsd))
                apsd[2][i] = tmp_apsd[idx]
                # apsd_list_sway.append(tmp_apsd[idx])
                apfd[2][i] = tmp_apfd[idx]
                # apfd_list_sway.append(tmp_apfd[idx])

            # # Save boxplot
            # apsd_dict = dict()
            # apfd_dict = dict()
            # time_dict = dict()
            #
            # apsd_dict['random'] = apsd_list_random
            # apfd_dict['random'] = apfd_list_random
            # time_dict['random'] = time_list_random
            # apsd_dict['greedy'] = apsd_list_greedy
            # apfd_dict['greedy'] = apfd_list_greedy
            # time_dict['greedy'] = time_list_greedy
            # apsd_dict['sway'] = apsd_list_sway
            # apfd_dict['sway'] = apfd_list_sway
            # time_dict['sway'] = time_list_sway
            #
            # draw_box_plot(dataset + '_v' + ver, apsd_dict, 'apsd', args.min_y, args.max_y)
            # draw_box_plot(dataset + '_v' + ver, apfd_dict, 'apfd', args.min_y, args.max_y)
            # draw_box_plot(dataset + '_v' + ver, time_dict, 'time', args.min_y, args.max_y)

            # Print suite# with max APSD/APFD for SWAY
            # suite_apsd = suites[apsd_list_sway.index(max(apsd_list_sway))]
            # suite_apfd = suites[apfd_list_sway.index(max(apfd_list_sway))]

            # print(f'{dataset} s{suite} v{ver}')

            apsd_mean = np.mean(apsd, axis=1)
            apsd_std = np.std(apsd, axis=1)
            apfd_mean = np.mean(apfd, axis=1)
            apfd_std = np.std(apfd, axis=1)

            print("APSD mean/std, APFD mean/std")
            print(f"random {dataset} s{suite} v{ver}: {apsd_mean[0]}/{apsd_std[0]}, {apfd_mean[0]}/{apfd_std[0]}")
            print(f"greedy {dataset} s{suite} v{ver}: {apsd_mean[1]}/{apsd_std[1]}, {apfd_mean[1]}/{apfd_std[1]}")
            print(f"sway {dataset} s{suite} v{ver}: {apsd_mean[2]}/{apsd_std[2]}, {apfd_mean[2]}/{apfd_std[2]}")

            # Save .csv
            folder_name = "CSVs/CSV-(2^{})".format(args.initial)
            # folder_name = "CSVs/CSV-(2^{})".format(args.initial)
            if not os.path.isdir(folder_name):
                os.makedirs(folder_name)
            np.savetxt(folder_name + "/{}_s{}_v{}_apsd.csv".format(dataset, suite, ver), apsd, delimiter=",")
            np.savetxt(folder_name + "/{}_s{}_v{}_apfd.csv".format(dataset, suite, ver), apfd, delimiter=",")
            np.savetxt(folder_name + "/{}_s{}_v{}_runtime.csv".format(dataset, suite, ver), runtime, delimiter=",")
