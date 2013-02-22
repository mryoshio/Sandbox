import sys, time

begin = time.time()

def fgrep():
    f = open(sys.argv[1], 'r')
    str = sys.argv[2]
    for l in f.readlines():
        if str in l:
            print l,
    f.close()

fgrep()
    
print "--- time: ", time.time() - begin
