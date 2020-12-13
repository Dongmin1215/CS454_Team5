"""
Created on 2020/12/14
@author: Dongmin1215, chanijung, yhpark, nicklee

(Description)
"""
from tcp_sway import *
from tcp_greedy import *
from plot_util import *

from get_apfd import *
from get_apsd import *

from tqdm import tqdm
import time
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -suite SUITE -e EMBEDDING -init INITIAL -s STOP -min MIN_Y -max MAX_Y
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-suite", "--suite", help="name of test suite (s1 ~ s1000)", type=str)
    parser.add_argument("-e", "--embedding", help="type of embedding used (1 for non-distortive, 2 for distortive)",
                        type=int)
    parser.add_argument("-init", "--initial", help="initial number of candidates", type=int, default=2 ** 15)
    parser.add_argument("-s", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=20)
    # parser.add_argument("-iter", "--iteration", help="iteration number of SWAY", type=int, default=1)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0.4)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.1)

    args = parser.parse_args()
    dataset = args.dataset

    matrix, fault_dict = fault_matrix(dataset)

    # algs = ['Distortive SWAY', 'Non-distortive SWAY', 'Additional Greedy']
    algs = ['SWAY', 'Additional Greedy']

    apsd_dict = dict()
    apfd_dict = dict()
    time_dict = dict()

    # Greedy algorithm
    apsd_list, apfd_list = [], []

    start_time = time.time()
    res = greedy(dataset)
    time_dict['greedy'] = time.time() - start_time

    apsd_list.append(get_apsd(dataset, res))
    apfd_list.append(get_apfd(matrix, fault_dict, dataset, args.suite, res))

    apsd_dict['greedy'] = apsd_list
    apfd_dict['greedy'] = apfd_list

    draw_cumulative_graph_coverage(res, dataset, args.suite, alg='greedy')
    draw_cumulative_graph_fault(matrix, fault_dict, res, dataset, args.suite, alg='greedy')

    # SWAY
    apsd_list, apfd_list = [], []

    start_time = time.time()
    res, can = get_sway_res(dataset, args.initial, args.stop)
    time_dict['sway'] = time.time() - start_time

    for perm in res:
        apsd_list.append(get_apsd(dataset, perm))
        apfd_list.append(get_apfd(matrix, fault_dict, dataset, args.suite, perm))

    apsd_dict['sway'] = apsd_list
    apfd_dict['sway'] = apfd_list

    res_ = res[apsd_list.index(max(apsd_list))]
    draw_cumulative_graph_coverage(res_, dataset, args.suite, alg='sway')
    draw_cumulative_graph_fault(matrix, fault_dict, res_, dataset, args.suite, alg='sway')

    # Save boxplot
    draw_box_plot(dataset, apsd_dict, 'apsd', args.min_y, args.max_y)
    draw_box_plot(dataset, apfd_dict, 'apfd', args.min_y, args.max_y)
