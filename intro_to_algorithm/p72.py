
def insertsort(x):
    if x == None: return
    for i in range(1, len(x)):
        j = i
        while j > 0 and x[j-1] > x[j]:
            t = x[j]
            x[j] = x[j-1]
            x[j-1] = t
            j-=1
    return x

org = [2,4,7,3,1,10]
print org
rev = insertsort(org)
print rev

