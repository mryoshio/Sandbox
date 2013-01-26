
def merge(x, left, mid, right):
    n = right-left
    work = []
    il = left; ir = mid
    while il < mid and ir < right:
        if x[il] <= x[ir]:
            work.append(x[il])
            il += 1
        else:
            work.append(x[ir])
            ir += 1
    while il < mid:
        work.append(x[il])
        il += 1
    while ir < right:
        work.append(x[ir])
        ir += 1
    idx = left
    for i in range(0, n):
        x[idx] = work[i]
        idx+=1

def mergesortfirst(x):
    mergesort(x, 0, len(x))

def mergesort(x, left, right):
    if right-left <= 1: return
    mid = left + (right-left)/2
    mergesort(x, left, mid)
    mergesort(x, mid, right)
    merge(x, left, mid, right)

arr = [2,4,7,3,1,10]
print arr
mergesortfirst(arr)
print arr

