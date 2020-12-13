"""
Created on 2020/12/12
@author: 16ypark

Python script for drawing plots
"""

import subprocess
import matplotlib.pyplot as plt
from make_shell import *
from get_apfd import perm_to_str

import random
import numpy as np


def draw_box_plot(dataset, apsd_dict, plot_type, min_y, max_y):
    fig, ax = plt.subplots()
    ax.boxplot(apsd_dict.values(), showmeans=True)
    ax.set_xticklabels(apsd_dict.keys())
    ax.set_xlabel('Iteration #')

    plt.figure(dpi=1200)
    plt.gca().set_ylim([min_y, max_y])
    if plot_type == 'apsd':
        ax.set_ylabel('APSD')
        plt.title('Box-whisker plot of APSD (' + dataset + ')')
        plt.savefig('Plots/APSD/' + dataset + '.png')
    elif plot_type == 'apfd':
        ax.set_ylabel('APFD')
        plt.title('Box-whisker plot of APFD (' + dataset + ')')
        plt.savefig('Plots/APFD/' + dataset + '.png')


def draw_cumulative_graph_coverage(perm, dataset, suite, alg):
    make_shell(perm, dataset)
    out = subprocess.Popen(['sh', 'do_testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                           cwd='Datasets/' + dataset + '/scripts')
    stdout, stderr = out.communicate()
    cumulative_coverage = [float(x[15:20]) for x in stdout.decode('utf-8').split('\n') if '%' in x]
    cumulative_coverage.insert(0, 0)

    plt.figure(dpi=1200)
    plt.plot(list(range(1, len(perm) + 1)), cumulative_coverage)
    if alg == 'greedy':
        plt.title(f'Greedy ({dataset}, {suite})')
    elif alg == 'sway':
        plt.title(f'SWAY ({dataset}, {suite})')
    plt.ylabel('Coverage %')
    plt.xlabel('# of Test Cases Executed')
    plt.gca().set_ylim([0, 100])
    plt.savefig('Plots/cumulative_coverage/' + dataset + '_' + suite)


def draw_cumulative_graph_fault(matrix, fault_dict, perm, dataset, suite, alg):
    test_suite = perm_to_str(perm, dataset, suite)
    num_cases = matrix.shape[0]
    num_faults = matrix.shape[1]

    faults = np.zeros(num_faults)
    fault_coverage = []

    for case in test_suite:
        for j in range(num_faults):
            if faults[j] == 0 and matrix[fault_dict[case]][j] != 0:
                faults[j] = 1
        fault_coverage.append(sum(faults))

    plt.figure(dpi=1200)
    plt.plot(list(range(1, len(perm) + 1)), fault_coverage)
    if alg == 'greedy':
        plt.title(f'Greedy ({dataset}, {suite})')
    elif alg == 'sway':
        plt.title(f'SWAY ({dataset}, {suite})')
    plt.ylabel('Number of faults covered')
    plt.xlabel('# of Test Cases Executed')
    plt.gca().set_ylim([0, 100])
    plt.savefig('Plots/cumulative_fault/' + dataset + '_' + suite)


if __name__ == '__main__':
    tmp = list(range(1, 322))
    random.shuffle(tmp)
    draw_cumulative_graph_coverage(tmp, 'printtokens', 's50', 'sway')
