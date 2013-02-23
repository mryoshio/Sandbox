import sys, random, re

def bin_search(items, num):
    left = 0; right=len(items)-1
    while left <= right:
        mid = (left+right)/2
        if items[mid] == num:
            print "%d is at %d" % (num, mid)
            return
        if items[mid] < num:
            left = mid+1
        else:
            right = mid-1
    print "not found"

def main():
    file = open(sys.argv[1], 'r')
    for line in file:
        line = line.strip()
        if line == '':return
        sep = line.split(';')
        items = [int(i) for i in sep[0].split(',')]
        bin_search(sorted(items), int(sep[1]))
    file.close()

if __name__ == "__main__":
    main()
