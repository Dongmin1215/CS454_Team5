"""
Created on 2020/12/12
@author: Dongmin1215, chanijung, yhpark, nicklee

Python script for reproducing the results
"""

from __future__ import division

import os
import random
from Algorithms.sway_sampler import sway
from get_apsd import *


def dist(ind1, ind2):
    ind1 = rank_vector(ind1)    #To calculate swap distance
    ind2 = rank_vector(ind2) 
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

def rank_vector(pi):
    n = len(pi)
    result = []

    for i in range(n):
        result.append(pi.index(i+1))

    return result

def tcp_sway(dataset, ver, initial, stop, alg):
    
    num_tests_dict = {'flex':21, 'grep':193, 'gzip':211, 'sed':36}

    # Compare function
    def comparing(part1, part2): ##Need modification 
        if ver=='0':
            return get_apsd(dataset, part1) > get_apsd(dataset, part2)
        else:
            return get_apsd_linux(dataset, ver, part1) > get_apsd_linux(dataset, ver, part2)

    if ver=='0':
        path = 'Datasets/' + dataset + '/traces'
        file_list = os.listdir(path)
        length = sum(['dump' in name for name in file_list])
    else: #linux utils
        length = num_tests_dict[dataset]
        
    candidates = []

    # Build initial population
    for _ in range(initial):
        x = list(range(1, length + 1))
        while x in candidates:  # avoid any repetitions
            random.shuffle(x)
        candidates.append(x)
    
    # Binary
    if alg == 1:
        emb_cand, emb_dict = embed(candidates)
        res = sway(emb_cand, partial(split_products, groupC=min(15, dim // 7)), comparing, alg, emb_dict)
        return res, candidates

    # continuous
    elif alg == 2:
        return sway(candidates, where, comparing, stop, alg, None), candidates


