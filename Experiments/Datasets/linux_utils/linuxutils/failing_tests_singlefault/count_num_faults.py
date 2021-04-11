import numpy as np
from os import listdir
from os.path import isfile, join
import pandas as pd    

for dataset in ['flex', 'grep', 'gzip', 'sed']:
    print(f'dataset: {dataset}')
    path = dataset
    # print(listdir(path))
    pkl_files = [f for f in listdir(path) if isfile(join(path, f)) and f[0]=='v']
    pkl_files.sort()
    ver = 0
    count = 0
    for pkl in pkl_files:
        if ver!= pkl[1]:
            if ver!=0:
                print(f'ver {ver}: {count}')
            count = 1
        else:
            count += 1
        ver = pkl[1]
        # print(f'ver: {ver}')
        # print(f'count: {count}')
    print(f'ver {ver}: {count}')
        