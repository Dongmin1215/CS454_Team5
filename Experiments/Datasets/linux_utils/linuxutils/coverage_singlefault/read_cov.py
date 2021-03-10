import pandas as pd
import sys
import numpy as np
from os import listdir
from os.path import isfile, join

# filename = sys.argv[1]
# path = filename + ".pkl"
# unpickled = pd.read_pickle(path)
# print(unpickled[-10:])


# obj="grep/"
# pkl1 = obj+"v1_f3.pkl"
# pkl2 = obj+"v3_f2.pkl"
# df1 = pd.read_pickle(pkl1)
# df2 = pd.read_pickle(pkl2)
# diff = df1-df2
# print(df1)
# print(df2)
# print(np.sum(df1.to_numpy()))
# print(np.sum(df2.to_numpy()))
# print(np.nansum(diff.to_numpy()))

#Check num_test and num_faults (expected: {'flex': 33, 'grep': 11, 'gzip': 16, 'sed': 7})
def check_versions():
    datasets = ["flex", "grep", "gzip", "sed"]
    for d in datasets:
        print(f'dataset: {d}')
        pkl_files = [f for f in listdir(d) if isfile(join(d, f)) and f[0]=='v']
        # prev = 0
        for pkl in pkl_files:
            print(f'filename: {pkl}')
            df = pd.read_pickle(d + "/" + pkl)
            print(df)
            # this = len(df.columns)
            # if this!=prev:
                # print(f'num tests: {this}')
            # prev = this
            
        print('-----------------------')

def print_cov_table(dataset):
    pkl_files = [f for f in listdir(dataset) if isfile(join(dataset, f)) and f[0]=='v']
    # prev = 0
    pkl_files.sort()
    for pkl in pkl_files:
        print(f'filename: {pkl}')
        df = pd.read_pickle(dataset + "/" + pkl)
        # print(df)
        print(f'{pkl}: {len(df.index)}')
    print('-------------------\n\n')

def print_cov_index(dataset):
    pkl_files = [f for f in listdir(dataset) if isfile(join(dataset, f)) and f[0]=='v']
    # prev = 0
    pkl_files.sort()
    df = pd.read_pickle(dataset + "/" + pkl_files[0])
    # print(df.index)
    print(df.iloc[:,0].index.get_level_values(1)[0])
    # df.xs(1, level='A', drop_level=False) # axis=1 if columns

if __name__ == '__main__':
    # print_cov_index('flex')
    # check_versions()

    for d in ['flex', 'grep', 'gzip', 'sed']:
        print(f'dataset: {d}')
        print_cov_table(d)
        