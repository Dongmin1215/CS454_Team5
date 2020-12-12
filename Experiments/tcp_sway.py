"""
Created on 2020/12/12
@author: Dongmin1215, chanijung, yhpark, nicklee

Python script for reproducing the results
"""

from __future__ import division
from Algorithms.sway_sampler import sway
import time
import random
import argparse
import os
import subprocess
from tqdm import tqdm

from parse_suite import *
from get_apfd import *
from get_apsd import *

import matplotlib.pyplot as plt


def dist(ind1, ind2):
    d = 0
    for i, j in zip(ind1, ind2):
        d += (i - j) ** 2
    return d


def where(pop):  # pop = candidates
    # print(len(pop))
    rand = random.choice(pop)
    ds = [dist(i, rand) for i in pop]
    east = pop[ds.index(max(ds))]
    ds = [dist(i, east) for i in pop]
    west = pop[ds.index(max(ds))]

    c = dist(east, west)
    cc = 2 * c ** 0.5

    mappings = list()
    for x in pop:
        a = dist(x, west)
        b = dist(x, east)
        d = (a + c - b) / cc
        mappings.append((x, d))

    mappings = sorted(mappings, key=lambda i: i[1])
    mappings = [i[0] for i in mappings]

    n = len(mappings)
    eastItems = mappings[:int(n * 0.2)] + mappings[int(n * 0.5):int(n * 0.8)]
    westItems = mappings[int(n * 0.2):int(n * 0.5)] + mappings[int(n * 0.8):]

    return west, east, eastItems, westItems


def get_sway_res(dataset, initial, stop):
    path = 'Siemens/' + dataset + '/traces'
    file_list = os.listdir(path)
    l = len(file_list)
    candidates = []

    # Build initial population
    for _ in range(initial):
        x = list(range(1, l + 1))
        while x in candidates:  # avoid any repetitions
            random.shuffle(x)
        candidates.append(x)

    # Compare function
    def comparing(part1, part2):
        return get_apsd(dataset, part1) > get_apsd(dataset, part2)

    return sway(candidates, where, comparing, stop)


def draw_box_plot(dataset, apsd_dict):
    fig, ax = plt.subplots()
    ax.boxplot(apsd_dict.values(), showmeans=True)
    ax.set_xticklabels(apsd_dict.keys())
    ax.set_xlabel('Iteration #')
    ax.set_ylabel('APSD')
    plt.gca().set_ylim([args.min_y, args.max_y])
    plt.title('Box plot of APSD of candidates for each iteration for ' + args.dataset)
    plt.savefig(dataset + 'apsd-box-plot.png')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -suite SUITE -init INITIAL -iter ITERATION -min MIN_Y -max MAX_Y -s STOP
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-suite", "--suite", help="name of test suite (s1 ~ s1000)", type=str)
    parser.add_argument("-init", "--initial", help="initial number of candidates", type=int, default=2 ** 15)
    parser.add_argument("-iter", "--iteration", help="iteration number of SWAY", type=int, default=10)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.1)
    parser.add_argument("-s", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=10)

    args = parser.parse_args()
    dataset = args.dataset

    # Parsing test suites....
    for i in range(1000):
        x = "suite" + str(i)
        y = "s" + str(i)
        parse_file(dataset, x, y)

    # Setup the experiment...
    subprocess.call(['sh', 'setup.sh', dataset])

    apsd_dict = dict()
    print("ITERATIONS")
    for repeat in tqdm(range(args.iteration)):
        start_time = time.time()
        res = get_sway_res(dataset, args.initial, args.stop)
        finish_time = time.time()
        # print("len(res) : ", str(len(res)))

        apsd_list = list()
        for perm in res:
            apsd_list.append(get_apsd(dataset, perm))
            # print("apsd : ", apsd)
            # print(perm)

        apsd_dict[repeat] = apsd_list

    # Save boxplot
    draw_box_plot(dataset, apsd_dict)
