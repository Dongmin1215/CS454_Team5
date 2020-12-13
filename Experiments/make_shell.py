def make_shell(perm, dataset):
    path = 'Datasets/' + dataset + '/scripts/'

    # Create new shell file for the new permutation
    f = open(path + "testme.sh", "r")

    x, text = [], []
    while True:
        line = f.readline()
        if not line:
            break
        line = line.strip('\n')
        text.append(line)
        if line == "":
            x.append(text)
            text = []
    f.close()

    fw = open(path + "do_testme.sh", "w")
    fw.write("rm *.gcda\n\n")
    for p in perm:
        for line in x[p]:
            if "rm" not in line:
                fw.write(line)
                fw.write("\n")
    fw.close()


if __name__ == "__main__":
    make_shell([4, 9, 11, 12, 8, 3, 7, 2, 5, 13, 10, 1, 6], 'printtokens')
