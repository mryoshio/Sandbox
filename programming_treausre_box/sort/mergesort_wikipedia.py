import random

def merge(left, right):
    result = []
    i, j = 0, 0
    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i+=1
        else:
            result.append(right[j])
            j+=1
    result += left[i:]
    result += right[j:]
    return result

def merge_sort(data):
    if len(data) < 2:
        return data
    else:
        m = len(data)/2
        left = merge_sort(data[:m])
        right = merge_sort(data[m:])
        return merge(left, right)

def test_merge_sort():
    N = 20
    list = [random.randint(0, 100) for i in range(0, N) ]
    print "*before*", list
    print "*after*", merge_sort(list)

if __name__ == "__main__":
    test_merge_sort()
