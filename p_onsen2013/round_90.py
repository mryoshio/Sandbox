import sys

f = open(sys.argv[1])
a= []*len(f.readline().rstrip("\n"))
for l in f.readlines():
    arr = []
    for s in l.rstrip('\n'):
        arr.append(s)
    a.append(arr)
for x in range(0, len(a[0])):
    for y in range(len(a)-1, -1, -1):
        print a[y][x],
    print
