import random

def merge_sort(n, data, offset):
    if n < 2:
        return
    m = n/2
    merge_sort(m, data, offset)
    merge_sort(n-m, data, offset+m)
    buf = [0]*m
    for i in range(m):
        buf[i] = data[offset+i]
    j = m
    i = k = 0
    while i < m and j < n:
        if buf[i] <= data[offset+j]:
            data[offset+k] = buf[i]
            i+=1
        else:
            data[offset+k] = data[offset+j]
            j+=1
        k +=1
    while i < m:
        data[offset+k] = buf[i]
        k+=1
        i+=1

def test_merge_sort():
    N = 20
    list = [random.randint(0, 100) for i in range(0, N) ]
    print "*before*", list
    merge_sort(N, list, 0)
    print "*after*", list

if __name__ == "__main__":
    test_merge_sort()
