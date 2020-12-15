"""
Created on 2020/12/14
@author: Dongmin1215, chanijung, yhpark, nicklee

(Description)
"""
from tcp_sway import *
import matplotlib.pyplot as plt

from get_apfd import *
from get_apsd import *

import os
import subprocess
import time
import argparse
from tqdm import tqdm

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -n NUMBER -e EMBEDDING -init INITIAL -s STOP -min MIN_Y -max MAX_Y
    dataset = 'tcas'
    program = 'tcas'

    parser.add_argument("-e", "--embedding", help="type of embedding used (1 for non-distortive, 2 for distortive)",
                        type=int)
    parser.add_argument("-s", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=20)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0.0)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.0)

    args = parser.parse_args()

    matrix, fault_dict = fault_matrix(dataset)

    # suites = list(range(1, 1001))
    suites = list(range(1, 101))
    initials = [2 ** 7, 2 ** 8, 2 ** 9, 2 ** 10]

    filepath = 'Datasets/' + dataset + '/scripts/helper.sh'
    filepath_ = 'Datasets/' + dataset + '/scripts/testme.sh'

    apsd_dict, apfd_dict, time_dict = dict(), dict(), dict()
    for init in tqdm(initials):
        apsd_list_sway, apfd_list_sway, time_list_sway = [], [], []
        for suite in tqdm(suites):
            suite = f's{suite}'

            if os.path.exists(filepath):
                os.remove(filepath)

            # Create auxillary .sh file
            fw = open(filepath, "w")
            fw.write('rm ../traces/*' + '\n')
            testme_maker = f'java -jar mts.jar -en ./{program} -gc {program}.c -sf ../testplans.alt/testplans-bigcov/{suite} ' \
                           f'-sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator '
            fw.write(testme_maker + '\n')
            # fw.write('sh testme.sh')
            fw.close()

            out = subprocess.Popen(['sh', 'helper.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                   cwd='Datasets/' + dataset + '/scripts')
            stdout, stderr = out.communicate()

            out = subprocess.Popen(['sh', 'testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                   cwd='Datasets/' + dataset + '/scripts')
            stdout, stderr = out.communicate()

            # SWAY
            start_time = time.time()
            res, can = tcp_sway(dataset, init, args.stop)
            time_list_sway.append(time.time() - start_time)

            tmp_apsd, tmp_apfd = [], []
            for perm in res:
                tmp_apsd.append(get_apsd(dataset, perm))
                tmp_apfd.append(get_apfd(matrix, fault_dict, dataset, suite, perm))
            idx = tmp_apsd.index(max(tmp_apsd))
            apsd_list_sway.append(tmp_apsd[idx])
            apfd_list_sway.append(tmp_apfd[idx])
        apsd_dict[init] = apsd_list_sway
        apfd_dict[init] = apfd_list_sway
        time_dict[init] = time_list_sway

    datas = [apsd_dict, apfd_dict, time_dict]
    types = ['apsd', 'apfd', 'time']

    for data, plot_type in zip(datas, types):
        plt.clf()
        plt.boxplot(data.values(), showmeans=True)
        plt.xticks(range(1, 1 + len(initials)), initials)
        plt.xlabel('Initial population', fontweight='bold')

        if plot_type == 'apsd':
            # plt.ylim([min_y, max_y])
            plt.ylabel('APSD', fontweight='bold')
            plt.title('Box-whisker plot of APSD (' + dataset + ')')
            plt.savefig('Plots/initial_population/apsd.png', dpi=1200)
        elif plot_type == 'apfd':
            # plt.ylim([min_y, max_y])
            plt.ylabel('APFD', fontweight='bold')
            plt.title('Box-whisker plot of APFD (' + dataset + ')')
            plt.savefig('Plots/initial_population/apfd.png', dpi=1200)
        elif plot_type == 'time':
            plt.ylabel('time(sec)', fontweight='bold')
            plt.title('Box-whisker plot of time (' + dataset + ')')
            plt.savefig('Plots/initial_population/time.png', dpi=1200)
