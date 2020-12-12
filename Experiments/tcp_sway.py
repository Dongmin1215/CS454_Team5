"""
Created on 2020/12/12
@author: Dongmin1215, chanijung, yhpark, nicklee

Python script for reproducing figures
"""


from __future__ import division
from Algorithms.sway_sampler import sway, bin_dominate, cont_dominate
from Benchmarks.POM3 import pre_defined
from repeats import request_new_file
import time
import random
import pdb
import argparse
import os

from get_apsd import get_apsd
from deap import base

import numpy as np
import pandas as pdb
import matplotlib.pyplot as plt

def dist(ind1, ind2):
    d = 0
    for i, j in zip(ind1, ind2):
        d += (i-j)**2
    return d


def where(pop): #pop = candidates
    print(len(pop))
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

    mappings = sorted(mappings, key=lambda i:i[1])
    mappings = [i[0] for i in mappings]

    n = len(mappings)
    eastItems = mappings[:int(n*0.2)] + mappings[int(n*0.5):int(n*0.8)]
    westItems = mappings[int(n*0.2):int(n*0.5)] + mappings[int(n*0.8):]

    # westItems = mappings[len(mappings)//2:]
    return west, east, eastItems, westItems

# M = None
#
# from deap.tools.emo import sortNondominated
# import numpy as np
#
#
# def where(pop):
#     while True:
#         sel = random.sample(pop, 8)
#         for i in sel:
#             M.eval(i, False)
#         front = sortNondominated(sel, 8, True)[0]
#         x = len(front)
#         non_front = [i for i in sel if i not in front]
#         if len(non_front) > 0:
#             break
#
#     east_items = list()
#     west_items = list()
#     for i in pop:
#         ds = [dist(i, j) for j in front+non_front]
#         if np.argmin(ds) < x:
#             west_items.append(i)
#         else:
#             east_items.append(i)
#     print(len(west_items), len(east_items))
#     return front[0], non_front[0], west_items, east_items


def comparing(part1, part2):
    path = args.dataset + "/traces"
    # print(part1)
    apsd1 = get_apsd(path, part1)
    apsd2 = get_apsd(path, part2)
    if apsd1 > apsd2:
        return True
    else:
        return False
    # return bin_dominate(part1, part2)


# def get_sway_res(model):
#     # generating the 10k random solutions
#     candidates = list()
#     for _ in range(10000):
#         ran_dec = [random.random() for _ in range(model.decsNum)]
#         can = model.Individual(ran_dec)
#         candidates.append(can)
#     print("candidates")
#     print(candidates[0])
#     global M
#     M = model
#     res = sway(candidates, model.eval, where, comparing)

#     return res

def get_sway_res(path):
    file_list = os.listdir(path)
    # generating the 10k random solutions
    candidates = list()
   
    for _ in range(10000):
        x =  list(range(1, len(file_list)))
        random.shuffle(x)
        candidates.append(x)
    # print("candidates")
    # print(candidates[0])
    global M
    # M = model
    # res = sway(candidates, model.eval, where, comparing)
    res = sway(candidates, where, comparing, args.stop)

    return res

def draw_box_plot(apsd_dict):
    fig, ax = plt.subplots()
    ax.boxplot(apsd_dict.values(), showmeans=True)
    ax.set_xticklabels(apsd_dict.keys())
    ax.set_xlabel('Iteration #')
    ax.set_ylabel('APSD')
    plt.gca().set_ylim([args.min_y, args.max_y])
    plt.title('Box plot of APSD of candidates for each iteration for ' + args.dataset)
    plt.savefig('box_plot_apsd_per_iteration.png')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    #-d DATASET -i ITERATION -min MIN_Y -max MAX_Y -s STOP
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-i", "--iteration", help="iteration number of SWAY", type=int)
    parser.add_argument("-min", "--min_y", help="mim value of y axis in box plot", type=float)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float)
    parser.add_argument("-s", "--stop", help="stop SWAY clustering when candidate number is less than this value", type=int)
    
    args = parser.parse_args()
    path = args.dataset + "/traces"

    apsd_dict = dict()
    for repeat in range(args.iteration):
        start_time = time.time()
        res = get_sway_res(path)
        finish_time = time.time()
        print("len(res) : ", str(len(res)))
        
        apsd_list = list()
        for perm in res:
            apsd = get_apsd(path, perm)
            apsd_list.append(apsd)
            print("apsd : ", apsd)
            print(perm)
        
        apsd_dict[repeat] = apsd_list
        # for i in ii:
            # POM3_model = pre_defined()[i]
            # start_time = time.time()
            # res = get_sway_res(93)
            # finish_time = time.time()
            # print(finish_time-start_time)
            # save the results
            # with open(request_new_file('./tse_rs/sway', POM3_model.name), 'w') as f:
            #     f.write('T:' + str(start_time) + '\n~~~\n')
            #     f.write('T:' + str(finish_time) + '\n')
            #     for i in res:
            #         f.write(' '.join(map(str, i.fitness.values)))
            #         f.write('\n')

        print('******   ' + str(repeat) + '   ******')
    draw_box_plot(apsd_dict)

