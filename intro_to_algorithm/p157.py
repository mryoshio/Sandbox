import sys

class BellmanFord:
    def find(Graph g, Vertex s):
        p = {};
        for x in g.vertices():
            p.put(v, sys.maxint)
        p.put(s, 0.0)

        cnt = 0
        while cnt < g.size():
            if update(g, p) == False:
                break
            cnt++

        if cnt == g.size():
            raise "Error"

        return p

    def update(g, p):
        changed = False
        for v in g.vertices():
            for e in g.edges(v):
                oldCost = p.get(e.end)
                newCost = p.get(e.start) + e.weight
                if newCost < oldCost:
                    p.put(e.end, newCost)
                    changed = True
        return changed
        
