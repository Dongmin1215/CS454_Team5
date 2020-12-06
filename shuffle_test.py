import random
a = list(range(1, 51))
random.shuffle(a)
f = open("testme.sh", "r")

fw = open("s_testme.sh", "w")

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

fw.write("rm *.gcda\n")

for i in a:
  for j in x[i]:
    
    if "rm" not in j:
      fw.write(j)
      fw.write("\n")
fw.close()