"""
Created on 2020/12/14
@author: Dongmin1215, chanijung, yhpark, nicklee

(Description)
"""
from tcp_sway import *
from tcp_greedy import *
from tcp_random import *
from plot_util import *

from get_apfd import *
from get_apsd import *

import os
import fileinput
import time
import argparse
from tqdm import tqdm
import numpy as np
from embedding import embed

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    # -d DATASET -n NUMBER -e EMBEDDING -init INITIAL -s STOP -min MIN_Y -max MAX_Y
    parser.add_argument("-d", "--dataset", help="dataset name")
    parser.add_argument("-suite", "--suite", help="name of test suite (1 ~ 1000)", type=str, default='1')
    parser.add_argument("-n", "--number", help="number of repetitions", type=int, default=30)
    # parser.add_argument("-n", "--number", help="number of test suites to compute over", type=int, default=500)
    parser.add_argument("-e", "--embedding", help="type of embedding used (1 for non-distortive, 2 for distortive)",
                        type=int, default=2)
    parser.add_argument("-init", "--initial", help="initial number of candidates", type=int, default=2 ** 15)
    parser.add_argument("-stop", "--stop", help="stop SWAY clustering when candidate number is less than this value",
                        type=int, default=10)
    # parser.add_argument("-iter", "--iteration", help="iteration number of SWAY", type=int, default=1)
    parser.add_argument("-min", "--min_y", help="min value of y axis in box plot", type=float, default=0.7)
    parser.add_argument("-max", "--max_y", help="max value of y axis in box plot", type=float, default=1.0)

    args = parser.parse_args()
    dataset = args.dataset

    matrix, fault_dict = fault_matrix(dataset)

    # algs = ['Distortive SWAY', 'Non-distortive SWAY', 'Additional Greedy', 'random']
    algs = ['SWAY', 'Additional Greedy', 'random']

    # suites = list(range(1, 1001))
    # suites = random.sample(suites, args.number)

    filepath = 'Datasets/' + dataset + '/scripts/helper.sh'
    filepath_ = 'Datasets/' + dataset + '/scripts/testme.sh'
    if os.path.exists(filepath):
        os.remove(filepath)

    if dataset == 'printtokens':
        program = 'print_tokens'
    elif dataset == 'printtokens2':
        program = 'print_tokens2'
    elif dataset == 'totinfo':
        program = 'tot_info'
    else:
        program = dataset

    n = args.number
    # {random, greedy, SWAY} x repetitions
    apsd = np.empty((3, n))
    apfd = np.empty((3, n))
    runtime = np.empty((3, n))
    # apsd_list_random, apfd_list_random, time_list_random = [], [], []
    # apsd_list_greedy, apfd_list_greedy, time_list_greedy = [], [], []
    # apsd_list_sway, apfd_list_sway, time_list_sway = [], [], []

    print(f"------{dataset}-------")

    s = int(args.suite)
    suite = f's{s}'
    for i in tqdm(range(n)):
        # # Create auxillary .sh file
        # fw = open(filepath, "w")
        # # fw.write('rm ../traces/*' + '\n')
        # testme_maker = f'java -jar mts.jar -en ./{program} -gc {program}.c -sf ../testplans.alt/testplans-bigcov/{suite} ' \
        #                f'-sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator '
        # fw.write(testme_maker + '\n')
        # # fw.write('sh testme.sh')
        # fw.close()

        # if dataset in ['schedule', 'schedule2']:
        #     with fileinput.FileInput(filepath_, inplace=True, backup='.bak') as f:
        #         for line in f:
        #             line.replace('input', '../input')

        # out = subprocess.Popen(['sh', 'helper.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        #                        cwd='Datasets/' + dataset + '/scripts')
        # stdout, stderr = out.communicate()

        # out = subprocess.Popen(['sh', 'testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        #                        cwd='Datasets/' + dataset + '/scripts')
        # stdout, stderr = out.communicate()

        # Random permutation ("sanity check")
        start_time = time.time()
        print(f'dataset {dataset}')
        res = tcp_random(dataset)
        runtime[0][i] = time.time() - start_time
        # time_list_random.append(time.time() - start_time)
        # print("random")
        # print(res)
        apsd[0][i] = get_apsd(dataset, res)
        # print(apsd[0][i])
        # apsd_list_random.append(get_apsd(dataset, res))
        apfd[0][i] = get_apfd(matrix, fault_dict, dataset, suite, res)
        # apfd_list_random.append(get_apfd(matrix, fault_dict, dataset, suite, res))

        # Greedy algorithm
        # print("greedy")
        start_time = time.time()
        res = tcp_greedy(dataset)
        runtime[1][i] = time.time() - start_time
        # time_list_greedy.append(time.time() - start_time)
        # print(res)
        apsd[1][i] = get_apsd(dataset, res)
        # print(apsd[1][i])
        # apsd_list_greedy.append(get_apsd(dataset, res))
        apfd[1][i] = get_apfd(matrix, fault_dict, dataset, suite, res)
        # apfd_list_greedy.append(get_apfd(matrix, fault_dict, dataset, suite, res))

        # SWAY
        # print("sway")
        start_time = time.time()
        res, can = tcp_sway(dataset, suite, '0', args.initial, args.stop, args.embedding)
        runtime[2][i] = time.time() - start_time
        # time_list_sway.append(time.time() - start_time)

        tmp_apsd, tmp_apfd = [], []
        # print(res)
        for perm in res:
            tmp_apsd.append(get_apsd(dataset, perm))
            tmp_apfd.append(get_apfd(matrix, fault_dict, dataset, suite, perm, False))
        idx = tmp_apsd.index(max(tmp_apsd))
        apsd[2][i] = tmp_apsd[idx]
        # print(apsd[2][i])
        # apsd_list_sway.append(tmp_apsd[idx])
        apfd[2][i] = tmp_apfd[idx]
        # apfd_list_sway.append(tmp_apfd[idx])

    # # Save .csv
    # apsd = np.array([apsd_list_random, apsd_list_greedy, apsd_list_sway])
    # apfd = np.array([apfd_list_random, apfd_list_greedy, apfd_list_sway])
    # runtime = np.array([time_list_random, time_list_greedy, time_list_sway])
    np.savetxt("CSVs/{}_s{}_apsd.csv".format(dataset, suite), apsd, delimiter=",")
    np.savetxt("CSVs/{}_s{}_apfd.csv".format(dataset, suite), apfd, delimiter=",")
    np.savetxt("CSVs/{}_s{}_runtime.csv".format(dataset, suite), runtime, delimiter=",")

    # # Save boxplot
    # apsd_dict = dict()
    # apfd_dict = dict()
    # time_dict = dict()
    #
    # apsd_dict['random'] = apsd_list_random
    # apfd_dict['random'] = apfd_list_random
    # time_dict['random'] = time_list_random
    # apsd_dict['greedy'] = apsd_list_greedy
    # apfd_dict['greedy'] = apfd_list_greedy
    # time_dict['greedy'] = time_list_greedy
    # apsd_dict['sway'] = apsd_list_sway
    # apfd_dict['sway'] = apfd_list_sway
    # time_dict['sway'] = time_list_sway
    #
    # draw_box_plot(dataset, apsd_dict, 'apsd', args.min_y, args.max_y)
    # draw_box_plot(dataset, apfd_dict, 'apfd', args.min_y, args.max_y)
    # draw_box_plot(dataset, time_dict, 'time', args.min_y, args.max_y)

    # # Print suite# with max APSD/APFD for SWAY
    # suite_apsd = suites[apsd_list_sway.index(max(apsd_list_sway))]
    # suite_apfd = suites[apfd_list_sway.index(max(apfd_list_sway))]
    #
    # print(f"{dataset}: {suite_apsd}(max APSD), {suite_apfd}(max APFD)")

    # suite = f's{suite_apsd}'
    #
    # if os.path.exists(filepath):
    #     os.remove(filepath)
    # # Create auxillary .sh file
    # fw = open(filepath, "w")
    # fw.write('rm ../traces/*' + '\n')
    # testme_maker = f'java -jar mts.jar -en ./{program} -gc {program}.c -sf ../testplans.alt/testplans-bigcov/{suite} ' \
    #                f'-sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator '
    # fw.write(testme_maker + '\n')
    # # fw.write('sh testme.sh')
    # fw.close()
    #
    # if dataset in ['schedule', 'schedule2']:
    #     with fileinput.FileInput(filepath_, inplace=True, backup='.bak') as f:
    #         for line in f:
    #             line.replace('input', '../input')
    #
    # out = subprocess.Popen(['sh', 'helper.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    #                        cwd='Datasets/' + dataset + '/scripts')
    # stdout, stderr = out.communicate()
    #
    # out = subprocess.Popen(['sh', 'testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    #                        cwd='Datasets/' + dataset + '/scripts')
    # stdout, stderr = out.communicate()
    #
    # # Create helper .sh file
    # if os.path.exists("helper.sh"):
    #     os.remove("helper.sh")
    # fw_ = open('helper.sh', "w")
    # fw_.write(f"python main.py -d {dataset} -suite {suite}")
    #
    # subprocess.Popen(['sh', 'helper.sh'])
    #
    #
    #
    # suite = f's{suite_apfd}'
    # if os.path.exists(filepath):
    #     os.remove(filepath)
    # # Create auxillary .sh file
    # fw = open(filepath, "w")
    # fw.write('rm ../traces/*' + '\n')
    # testme_maker = f'java -jar mts.jar -en ./{program} -gc {program}.c -sf ../testplans.alt/testplans-bigcov/{suite} ' \
    #                f'-sn testme.sh -tg sir.mts.generators.BourneShellScriptGenerator '
    # fw.write(testme_maker + '\n')
    # # fw.write('sh testme.sh')
    # fw.close()
    #
    # if dataset in ['schedule', 'schedule2']:
    #     with fileinput.FileInput(filepath_, inplace=True, backup='.bak') as f:
    #         for line in f:
    #             line.replace('input', '../input')
    #
    # out = subprocess.Popen(['sh', 'helper.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    #                        cwd='Datasets/' + dataset + '/scripts')
    # stdout, stderr = out.communicate()
    #
    # out = subprocess.Popen(['sh', 'testme.sh'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    #                        cwd='Datasets/' + dataset + '/scripts')
    # stdout, stderr = out.communicate()
    #
    # # Create helper .sh file
    # if os.path.exists("helper.sh"):
    #     os.remove("helper.sh")
    # fw_ = open('helper.sh', "w")
    # fw_.write(f"python main.py -d {dataset} -suite {suite}")
    #
    # subprocess.Popen(['sh', 'helper.sh'])

