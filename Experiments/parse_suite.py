import sys, getopt


def parse_file(dataset, file_name, new_name):
    if dataset == "space":
        base = 'Datasets/' + dataset + '/testplans.alt/testplans.cov/'
    else:
        base = 'Datasets/' + dataset + '/testplans.alt/testplans-bigcov/'

    FILE_NAME = base + file_name
    new_FILE_NAME = base + new_name
    file = open(FILE_NAME, "rb")
    w_file = open(new_FILE_NAME, "w")

    while True:
        line = file.readline()
        if not line: break
        line = line.strip().decode("utf-8")
        # '[' or ']' causes error when building testme.sh (ex. totinfo)
        line = line.replace("[", "0")
        line = line.replace("]", "1")
        # line = line.replace("|", "2")
        if line[0] == ".":
            __line = "-P[" + str(line) + "]\n"
            w_file.write(__line)
        elif line[0] == "<":
            __line = "-I[" + str(line[2:]) + "]\n"
            w_file.write(__line)
        else:
            __line = "-P[" + str(line) + "]\n"
            w_file.write(__line)
    file.close()
    w_file.close()


if __name__ == '__main__':
    datasets = ['printtokens', 'printtokens2', 'replace', 'schedule', 'schedule2', 'tcas', 'totinfo']
    datasets_ = ['space']

    for dataset in datasets:
        for i in range(1, 1001):
            x = "suite" + str(i)
            y = "s" + str(i)
            parse_file(dataset, x, y)

    for dataset in datasets_:
        for i in range(0, 1000):
            x = "suite" + str(i)
            y = "s" + str(i+1)
            parse_file(dataset, x, y)
