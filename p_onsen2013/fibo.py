import sys
n = int(sys.argv[1])
arr = [1, 1]
while len(arr) < n: arr.append(arr[-2] + arr[-1])
print arr[n-1]
