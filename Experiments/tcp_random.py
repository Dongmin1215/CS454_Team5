"""
Created on 2020/12/12
@author: nicklee

Python script for random permutation
"""
import os
import random


def tcp_random(dataset):
    path = 'Datasets/' + dataset + '/traces'
    file_list = os.listdir(path)
    length = sum(['dump' in name for name in file_list])

    # Randomly select a permutation
    x = list(range(1, length + 1))
    random.shuffle(x)

    return x