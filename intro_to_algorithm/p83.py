import sys

class Heap:
    def __init__(self):
        self.pos = 0
        self.values = []
    
    def push(self, v):
        p = self.pos ; self.pos+=1
        self.values.append(v)
        while p > 0:
            if self.values[(p-1)/2] <= self.values[p]:
                break
            t = self.values[(p-1)/2]
            self.values[(p-1)/2] = self.values[p]
            self.values[p] = t
            p = (p-1)/2

    def pop(self):
        if self.pos <= 0:
            raise Exception, "Exceeds the limit"
        result = self.values[0]
        self.pos-=1
        self.values[0] = self.values[self.pos]
        p = 0
        while p < self.pos:
            left = self.values[2*p+1] if 2*p+1 < self.pos else sys.maxint
            right = self.values[2*p+2] if 2*p+2 < self.pos else sys.maxint
            if self.values[p] <= left and self.values[p] <= right:
                break
            if left < right:
                self.values[2*p+1] = self.values[p]
                self.values[p] = left
                p = 2*p+1
            else:
                self.values[2*p+2] = self.values[p]
                self.values[p] = right
                p = 2*p+2
        return result

def heapsort(x):
    h = Heap()
    for i in range(0, len(x)):
        h.push(x[i])
    for i in range(0, len(x)):
        x[i] = h.pop()
    print x

org = [2,4,7,3,1,10]
print org
heapsort(org)

