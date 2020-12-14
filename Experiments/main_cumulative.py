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

import time
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -suite SUITE -e EMBEDDING -init INITIAL -s STOP -min MIN_Y -max MAX_Y
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-suite", "--suite", help="name of test suite (s1 ~ s1000)", type=str)
    parser.add_argument("-e", "--embedding", help="type of embedding used (1 for non-distortive, 2 for distortive)",
                        type=int)
    parser.add_argument("-init", "--initial", help="initial number of candidates", type=int, default=2 ** 10)
    parser.add_argument("-s", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=20)
    # parser.add_argument("-iter", "--iteration", help="iteration number of SWAY", type=int, default=1)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0.9)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.0)

    args = parser.parse_args()
    dataset = args.dataset

    matrix, fault_dict = fault_matrix(dataset)

    # algs = ['Distortive SWAY', 'Non-distortive SWAY', 'Additional Greedy', 'random']
    algs = ['SWAY', 'Additional Greedy', 'random']

    apsd_dict = dict()
    apfd_dict = dict()
    time_dict = dict()
    res_list = list()

    # Random permutation ("sanity check")
    apsd_list, apfd_list = [], []

    start_time = time.time()
    res = tcp_random(dataset)
    time_dict['random'] = time.time() - start_time

    apsd_list.append(get_apsd(dataset, res))
    apfd_list.append(get_apfd(matrix, fault_dict, dataset, args.suite, res))

    apsd_dict['random'] = apsd_list
    apfd_dict['random'] = apfd_list

    res_list.append(res)

    # Greedy algorithm
    apsd_list, apfd_list = [], []

    start_time = time.time()
    res = tcp_greedy(dataset)
    time_dict['greedy'] = time.time() - start_time

    apsd_list.append(get_apsd(dataset, res))
    apfd_list.append(get_apfd(matrix, fault_dict, dataset, args.suite, res))

    apsd_dict['greedy'] = apsd_list
    apfd_dict['greedy'] = apfd_list

    res_list.append(res)

    # SWAY
    apsd_list, apfd_list = [], []

    start_time = time.time()
    res, can = tcp_sway(dataset, args.initial, args.stop)
    time_dict['sway'] = time.time() - start_time

    for perm in res:
        apsd_list.append(get_apsd(dataset, perm))
        apfd_list.append(get_apfd(matrix, fault_dict, dataset, args.suite, perm))

    apsd_dict['sway'] = apsd_list
    apfd_dict['sway'] = apfd_list

    res_ = res[apsd_list.index(max(apsd_list))]
    res_list.append(res_)
    
    draw_cumulative_graph_coverage(res_list, dataset, args.suite)
    draw_cumulative_graph_fault(matrix, fault_dict, res_list, dataset, args.suite)

    print(time_dict)
