
def bubblesort(x):
    if (x == None): return
    for i in range(len(x), 0, -1):
        for j in range(1, i):
            if x[j-1] > x[j]:
                t = x[j-1]
                x[j-1] = x[j]
                x[j] = t
    return x

org = [2,4,7,3,1,10]
print org
rev = bubblesort(org)
print rev

