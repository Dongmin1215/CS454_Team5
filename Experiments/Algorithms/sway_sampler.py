from __future__ import division
from math import sqrt, exp
import random
import pdb
import itertools
import numpy as np
import time
from copy import deepcopy

def _loss(f1, f2):
    return sum(exp(i - j) for i, j in zip(f1, f2)) / len(f1)


def cont_dominate(ind1, ind2):
    """

    Args:
        ind1:
        ind2:
    ALL VALUES ARE LESS IS MORE!!!!
    Returns: whether ind1 dominates ind2, i.e. True if ind1 is better than ind2
    """
    f1 = tuple(ind1.fitness.values)
    f2 = tuple(ind2.fitness.values)
    return _loss(f1, f2) < _loss(f2, f1)


def bin_dominate(ind1, ind2):
    """
    Args:
        ind1:
        ind2:
    ALL VALUES ARE LESS IS MORE!!!!
    Returns: whether ind1 dominates ind2, i.e. True if ind1 is better than ind2
    """
    # f1 = tuple(ind1.fitness.values)
    # f2 = tuple(ind2.fitness.values)
    f1 = [random.random() for _ in range(10)]
    f2 = [random.random() for _ in range(10)]

    for i, j in zip(f1, f2):
        if i > j:
            return False

    if f1 == f2:
        return False
    return True


def sway(pop, splitor, better, stop, alg, emb_dict):
    def cluster(items, emb_dict, alg):
        # print(len(items))
        N = len(items)

        # add termination condition here
        if N < stop:
            return items
            #  end at here

        west, east, west_items, east_items = splitor(items)
        # return cluster(west_items)s
        if alg == 1:
            ValueError("Binary embedding not yet implemented!!")
            # print("east:",tuple(east))
            # print(type(tuple(east)))
            # east = emb_dict[tuple(east)]
            # west = emb_dict[tuple(west)]

        if better(east, west):
            selected = east_items
        if better(west, east):
            selected = west_items
        if not better(east, west) and not better(west, east):
            # tmp = np.concatenate((west_items, east_items))
            # assert(len(tmp) == N)
            K = N // 2
            random_mask = np.array([1] * K + [0] * (N - K), dtype=bool)
            np.random.shuffle(random_mask)
            # selected = tmp[random_mask]
            selected = items[random_mask]
            # selected = deepcopy(items[random_mask])
            # selected = random.sample(west_items+east_items, len(items)//2)
            # return cluster(east_items) + cluster(west_items)
        # selected = west_items[:len(west_items)//2]+east_items[:len(east_items)//2]
        return cluster(selected, emb_dict, alg)

    res = cluster(pop, emb_dict, alg)

    # for i in res:
    #     if not i.fitness.valid:
    #         evalfunc(i)
    # pdb.set_trace()
    return res
