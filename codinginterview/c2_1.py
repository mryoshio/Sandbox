import sys, random

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
    def append_to_tail(self, d):
        end = Node(d)
        n = self
        while n.next != None:
            n = n.next
        n.next = end

def make_unidirectional_list(l):
    root = Node(random.randint(0, 10))
    for i in range(l):
        root.append_to_tail(random.randint(0, 10))
    return root

def debug_list(r):
    n = r
    ar = []
    while n.next != None:
        ar.append(n.data)
        n = n.next
    ar.append(n.data)
    print ar

def del_dup(r):
    prev = cur = r
    h = { prev.data : True }
    while cur.next != None:
        cur = cur.next
        if cur.data in h.keys():
            prev.next = None
        else:
            h[cur.data] = True
            prev.next = cur
            prev = cur
    return r

root = make_unidirectional_list(int(sys.argv[1]))
debug_list(root)
root = del_dup(root)
debug_list(root)
