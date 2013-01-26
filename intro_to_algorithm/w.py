
def rev(x):
    t = x[0]
    x[0] = x[-1]
    x[-1] = t

x = [1,2,3,4,5]
print x
rev(x)
print x
