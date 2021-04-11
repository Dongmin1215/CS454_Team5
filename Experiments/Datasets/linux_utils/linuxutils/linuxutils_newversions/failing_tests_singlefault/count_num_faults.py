import numpy as np
from os import listdir
from os.path import isfile, join, isdir
import pandas as pd    

# for dataset in ['flex', 'grep', 'gzip', 'sed']:
program_dirs = [f for f in listdir('./') if isdir(join('./', f))]
for program in program_dirs:
    print(f'program: {program}')
    path = program
    # print(listdir(path))
    fault_matrices = [f for f in listdir(path) if isfile(join(path, f)) and f[0]=='v']
    fault_matrices.sort()
    ver = 0
    count = 0
    for pkl in fault_matrices:
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
        