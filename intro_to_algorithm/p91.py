
class Vertex:
    def __init__(self, val):
        self.val = val

class Edge:
    def __init__(self, start, goal):
        self.s = start
        self.e = goal
        
class Graph:
    def __init__(self):
        self.vs = []
        self.es = {}

    def get_edges(self, v):
        return self.es[v]
