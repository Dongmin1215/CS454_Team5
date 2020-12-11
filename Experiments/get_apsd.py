import os
import random

#Assume that perm is a list of integers
def get_apsd(perm):
    ts_values = []
    tc_order = 1
    uncovered_lines = []
    for i in perm: #i is test case number
        zeros = "00000" if i<10 else "0000"
        path = "printtokens/traces/" + "dump_"+zeros+str(i)
        # print(path)
        f = open(path, "r")
        lines = f.readlines()
        profile = []
        line_count = -5
        for line in lines:
            line_count += 1
            if line[line.find(":")-1].isdigit():
                profile.append(1)
            else:
                profile.append(0)
        # print(profile)
        if tc_order==1:
            uncovered_lines = list(range(len(profile)))
        f.close()
        for j in uncovered_lines: #j is line number
            bit = profile[j]
            if bit:
                ts_values.append(tc_order)
                uncovered_lines.remove(j) #Will not check the cover of this line anymore\
        tc_order += 1
    # print(f'ts_values: {ts_values}')
    # print(f'uncovered_lines: {uncovered_lines}')
    # print(f'tc_order: {tc_order}')
    apsd = 1- sum(ts_values)/((tc_order-1)*len(profile)) + 0.5/(tc_order-1)
    return apsd


# perm0 = list(range(1,70))
# for i in range(10):
#     random.shuffle(perm0)
#     apsd = get_apsd(perm0)
