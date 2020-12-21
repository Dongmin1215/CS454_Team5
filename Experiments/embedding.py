"""
Created on 2020/12/12
@author: Dongmin1215, chanijung

input_list : initial population(list) of permutations
ex. [[1,2,3,4], [2,3,4,1], [1,3,2,4]]
"""
import numpy as np

def embed(input_list):
  n = len(input_list[0])

  results = []
  emb_dict = {}
  for perm in input_list: 
    perm2 = np.zeros([n, n])
    for j in range(1, n+1):
      for i in range(1, j+1):
        perm2[i-1][j-1] = int(perm.index(i) < perm.index(j))
    # print(perm2.flatten())
    results.append(perm2.flatten())
    emb_dict[tuple(perm2.flatten())] = perm
  return results, emb_dict
