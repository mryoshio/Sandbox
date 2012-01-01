import sys, random, re

def quick_sort(bottom, top, data):
    if bottom >= top:
        return
    div = data[bottom]
    lower = bottom
    upper = top
    while lower < upper:
        while lower <= upper and data[lower] <= div:
            lower += 1
        while lower <= upper and data[upper] > div:
            upper -= 1
        if lower < upper:
            temp = data[lower]
            data[lower] = data[upper]
            data[upper] = temp
    temp = data[bottom]
    data[bottom] = data[upper]
    data[upper] = temp
    quick_sort(bottom, upper-1, data)
    quick_sort(upper+1, top, data)

def main():
    l = []
    for i in range(0, 20):
        l.append(random.randint(0, 100))
    print l
    quick_sort(0, len(l)-1, l)
    print l

if __name__ == "__main__":
    main()
