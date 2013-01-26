

def find_pivot_idx(x, left, right):
    if right-left <= 1: return
    t = x[left]
    for i in range(left+1, right):
        if x[i] == t: continue
        if x[i] < t:
            return i
        else:
            return left
    return -1

def partition(x, left, right, pivot):
    il = left; ir = right-1

    while il < ir:
        while il < right and x[il] <= pivot:
            il+=1
        while left <= ir and pivot < x[ir]:
            ir-=1
        if il >= ir:
            break
        t = x[il]
        x[il] = x[ir]
        x[ir] = t
    return ir+1

def quicksortfirst(x):
    quicksort(x, 0, len(x))

def quicksort(x, left, right):
    if right-left <= 1: return
    pivot_idx = find_pivot_idx(x, left, right)
    if pivot_idx < 0: return
    mid = partition(x, left, right, x[pivot_idx])
    quicksort(x, left, mid)
    quicksort(x, mid, right)

org = [2,4,7,3,1,10]
print org
quicksortfirst(org)
print org

