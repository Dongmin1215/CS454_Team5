import sys, getopt


def parse_file(dataset, file_name, new_name):
    base = 'Siemens/' + dataset + 'testplans.alt/testplans-bigcov/'

    FILE_NAME = base + file_name
    new_FILE_NAME = base + new_name
    file = open(FILE_NAME, "rb")
    w_file = open(new_FILE_NAME, "w")

    while True:
        line = file.readline()
        if not line: break
        line = line.strip().decode("utf-8")
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

#
#
# if __name__ == '__main__':
#   for i in range(1000):
#     x = "suite" + str(i)
#     y = "s" + str(i)
#     parse_file(x, y)
