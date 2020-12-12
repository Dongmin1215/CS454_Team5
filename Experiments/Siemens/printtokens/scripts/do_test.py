import random

f = open("testme.sh", "r")

fw = open("do_testme.sh", "w")

x = []
text = []

while True:
  line = f.readline()
  if not line: break
  line = line.strip('\n')
  text.append(line)
  if line== "":
    x.append(text)
    text = []

f.close()

def make_shell(perm):
  global x  
  fw.write("rm *.gcda\n\n")
  for p in perm:
    for line in x[p]:
      if "rm" not in line:
        fw.write(line)
        fw.write("\n")

  fw.close()

if __name__ == "__main__":
  make_shell([4, 9, 11, 12, 8, 3, 7, 2, 5, 13, 10, 1, 6])