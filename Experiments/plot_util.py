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


def draw_box_plot(dataset, input_dict, plot_type, min_y, max_y):
    plt.clf()
    labels, data = input_dict.keys(), input_dict.values()
    plt.boxplot(data, showmeans=True)
    plt.xticks(range(1, len(labels)+1), labels)
    plt.xlabel('Algorithm', fontweight='bold')

    if plot_type == 'apsd':
        plt.ylim([min_y, max_y])
        plt.ylabel('APSD', fontweight='bold')
        plt.title('Box-whisker plot of APSD (' + dataset + ')')
        plt.savefig('Plots/APSD/' + dataset + '.png', dpi=1200)
    elif plot_type == 'apfd':
        plt.ylim([min_y, max_y])
        plt.ylabel('APFD', fontweight='bold')
        plt.title('Box-whisker plot of APFD (' + dataset + ')')
        plt.savefig('Plots/APFD/' + dataset + '.png', dpi=1200)
    elif plot_type == 'time':
        plt.ylabel('time(sec)', fontweight='bold')
        plt.title('Box-whisker plot of time (' + dataset + ')')
        plt.savefig('Plots/time/' + dataset + '.png', dpi=1200)


def draw_cumulative_graph_coverage(perm, dataset, suite, alg):
    make_shell(perm, dataset)
    out = subprocess.Popen(['sh', 'do_testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                           cwd='Datasets/' + dataset + '/scripts')
    stdout, stderr = out.communicate()
    cumulative_coverage = [float(x[15:20]) for x in stdout.decode('utf-8').split('\n') if '%' in x]
    cumulative_coverage.insert(0, 0)

    plt.plot(list(range(len(perm) + 1)), cumulative_coverage)
    plt.ylabel('Coverage %')
    plt.xlabel('# of Test Cases Executed')
    plt.ylim([0, 100])
    if alg == 'greedy':
        plt.title(f'Greedy ({dataset}, {suite})')
    elif alg == 'random':
        plt.title(f'Random ({dataset}, {suite})')
    elif alg == 'sway':
        plt.title(f'SWAY ({dataset}, {suite})')
    plt.savefig(f'Plots/cumulative_coverage/{dataset}_{suite}_{alg}.png', dpi=1200)
    # plt.show()


def draw_cumulative_graph_fault(matrix, fault_dict, perm, dataset, suite, alg):
    test_suite = perm_to_str(perm, dataset, suite)
    num_faults = matrix.shape[1]

    faults = np.zeros(num_faults)
    fault_coverage = [0]

    for case in test_suite:
        for j in range(num_faults):
            if faults[j] == 0 and matrix[fault_dict[case]][j] != 0:
                faults[j] = 1
        fault_coverage.append(sum(faults))

    plt.plot(list(range(len(perm) + 1)), fault_coverage)
    plt.ylabel('Number of faults covered')
    plt.xlabel('# of Test Cases Executed')
    # plt.gca().set_ylim([0, 100])
    if alg == 'greedy':
        plt.title(f'Greedy ({dataset}, {suite})')
    if alg == 'random':
        plt.title(f'Random ({dataset}, {suite})')
    elif alg == 'sway':
        plt.title(f'SWAY ({dataset}, {suite})')
    plt.savefig(f'Plots/cumulative_fault/{dataset}_{suite}_{alg}.png', dpi=1200)
    # plt.show()


if __name__ == '__main__':
    tmp = list(range(1, 322))
    random.shuffle(tmp)
    draw_cumulative_graph_coverage(tmp, 'printtokens2', 's50', 'sway')
