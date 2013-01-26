
def selectionsort(x):
    if x == None: return
    N = len(x)
    for i in range(0, N):
        minIdx = i
        for j in range(i+1, N):
            if x[j] < x[minIdx]:
                minIdx = j
        t = x[i]
        x[i] = x[minIdx]
        x[minIdx] = t
    return x
    
org = [2,4,7,3,1,10]
print org
rev = selectionsort(org)
print rev
