import sys

def count_one(n):
    ret = 0
    if (n == 0):
        return 0
    if n % 10 == 1:
        ret = 1
    else:
        ret = 0
    return ret + count_one(n/10)
    
input = int(sys.argv[1])
if input % 10 == 1:
    print 1 + count_one(input/10)
else:
    print 0 + count_one(input/10)

