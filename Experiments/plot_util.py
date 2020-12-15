"""
Created on 2020/12/12
@author: 16ypark

Python script for drawing plots
"""

import subprocess
import matplotlib.pyplot as plt
import pandas as pd
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


def draw_cumulative_graph_coverage(perm_list, dataset, suite):
    plt.clf()
    cumulative_coverage_list = list()
    
    for perm in perm_list:
        make_shell(perm, dataset)
        out = subprocess.Popen(['sh', 'do_testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                               cwd='Datasets/' + dataset + '/scripts')
        stdout, stderr = out.communicate()
        cumulative_coverage = [float(x[15:20]) for x in stdout.decode('utf-8').split('\n') if '%' in x]
        cumulative_coverage.insert(0, 0)
        cumulative_coverage_list.append(cumulative_coverage)
        #print(cumulative_coverage)
#    print(cumulative_coverage_list)
    
    df = pd.DataFrame({'x': range(len(perm) + 1), 'y1': cumulative_coverage_list[0], 'y2': cumulative_coverage_list[1], 'y3': cumulative_coverage_list[2] })

    plt.plot( 'x', 'y1', data=df, color='skyblue', label="random" )
    plt.plot( 'x', 'y2', data=df, color='olive', label="greedy" )
    plt.plot( 'x', 'y3', data=df, color='orange', label="sway" )
    plt.legend()
    plt.ylabel('Coverage %', fontweight='bold')
    plt.xlabel('# of Test Cases Executed', fontweight='bold')
    plt.ylim([0, 100])
    plt.title(f'Cumulative plot of statement coverage ({dataset}, {suite})')
    plt.savefig(f'Plots/cumulative_coverage/{dataset}_{suite}_all.png', dpi=1200)
    # plt.show()


def draw_cumulative_graph_fault(matrix, fault_dict, perm_list, dataset, suite):
    plt.clf()
    fault_coverage_list = list()
    
    for perm in perm_list:
        test_suite = perm_to_str(perm, dataset, suite)
        num_faults = matrix.shape[1]

        faults = np.zeros(num_faults)
        fault_coverage = [0]

        for case in test_suite:
            for j in range(num_faults):
                if faults[j] == 0 and matrix[fault_dict[case]][j] != 0:
                    faults[j] = 1
            fault_coverage.append(sum(faults))
        fault_coverage_list.append(fault_coverage)
    
    df = pd.DataFrame({'x': range(len(perm) + 1), 'y1': fault_coverage_list[0], 'y2': fault_coverage_list[1], 'y3': fault_coverage_list[2] })

    plt.plot( 'x', 'y1', data=df, color='skyblue', label="random" )
    plt.plot( 'x', 'y2', data=df, color='olive', label="greedy" )
    plt.plot( 'x', 'y3', data=df, color='orange', label="sway" )
    plt.legend()

    plt.ylabel('Number of faults covered', fontweight='bold')
    plt.xlabel('# of Test Cases Executed', fontweight='bold')
    # plt.gca().set_ylim([0, 100])
    plt.title(f'Cumulative plot of fault coverage ({dataset}, {suite})')
    plt.savefig(f'Plots/cumulative_fault/{dataset}_{suite}_all.png', dpi=1200)
    # plt.show()


if __name__ == '__main__':
    tmp = list(range(1, 322))
    random.shuffle(tmp)
    draw_cumulative_graph_coverage(tmp, 'printtokens2', 's50', 'sway')