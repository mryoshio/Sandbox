from p91 import *

def find(g, start, goal):
    return dfs(g, start, goal, [])

def dfs(g, v, goal, visited):
    if v == goal: return True
    if v in visited: return False
    visited.append(v)
    edges = g.get_edges(v)
    for i in range(len(edges)):
        edge = edges[i]
        if dfs(g, edge.e, goal, visited): return True
    return False

def gen_vs():
    return [Vertex(i) for i in range(1, 8)]

g = Graph()
vs = gen_vs()
g.vs = vs
g.es[vs[0]] = [Edge(vs[0], vs[1]), Edge(vs[0], vs[4]), Edge(vs[0], vs[6])]
g.es[vs[1]] = [Edge(vs[1], vs[2]), Edge(vs[1], vs[3])]
g.es[vs[4]] = [Edge(vs[4], vs[3]), Edge(vs[4], vs[5])]
g.es[vs[5]] = [Edge(vs[5], vs[3])]
g.es[vs[2]] = [] ; g.es[vs[3]] = [] ; g.es[vs[6]] = []

print find(g, vs[0], vs[6])
