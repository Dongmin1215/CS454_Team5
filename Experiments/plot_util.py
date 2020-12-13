"""
Created on 2020/12/12
@author: 16ypark

Python script for drawing plots
"""

from printtokens.scripts.do_test import *

import argparse
import subprocess
import matplotlib.pyplot as plt

def draw_box_plot(dataset, apsd_dict, type):
    fig, ax = plt.subplots()
    ax.boxplot(apsd_dict.values(), showmeans=True)
    ax.set_xticklabels(apsd_dict.keys())
    ax.set_xlabel('Iteration #')
    plt.gca().set_ylim([args.min_y, args.max_y])
    if type == 'apsd':
        ax.set_ylabel('APSD')
        plt.title('Box-whisker plot of APSD of resulting candidates (' + args.dataset + ')')
        plt.savefig('Plots/APSD/' + dataset + '.png')
    elif type == 'apfd':
        ax.set_ylabel('APFD')
        plt.title('Box-whisker plot of APFD of resulting candidates (' + args.dataset + ')')
        plt.savefig('Plots/APFD/' + dataset + '.png')
        
def draw_cumulative_graph(perm, dataset, suite):
    make_shell(perm)
    out = subprocess.Popen(['sh', 'do_testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, cwd='./printtokens/scripts')
    stdout, stderr = out.communicate()
    cumulative_coverage = [float(x[15:20]) for x in stdout.decode('utf-8').split('\n') if '%' in x]
    cumulative_coverage.insert(0, 0)
    
    plt.plot(list(range(0, len(perm) + 1)), cumulative_coverage)
    plt.title('Cumulative Coverage of ' + dataset + ' ' + suite)
    plt.ylabel('Coverage %')
    plt.xlabel('# of Test Cases Executed')
    plt.gca().set_ylim([0, 100])
    plt.savefig('Plots/cumulative_coverage/' + dataset + '_' + suite)
    
if __name__ == '__main__':
    draw_cumulative_graph(list(range(1, 33)))
