import math
import Queue as queue

DIR=['E', 'W', 'S', 'N']
DX=[1, -1, 0, 0]
DY=[0, 0, 1, -1]

class Index:
    def __init__(self, x, y):
        self.x = x
        self.y = y

class IndexComparator:
    def __init__(self, goal):
        self.goal = goal

    def compare(self, lhs, rhs):
        r1 = math.fabs(lhs.y-goal.y) + math.fabs(lhs.x-goal.x)
        r2 = math.fabs(rhs.y-goal.y) + math.fabs(rhs.x-goal.x)
        return r1-r2

def solve(m, start, goal):
    H = len(m)
    W = len(m[0])

    visited = [[' ' for j in range(H)] for i in range(W)]

    q = queue.PriorityQueue()
    q.put(start)

    while q.empty() == False:
        idx = q.get()
        x = idx.x
        y = idx.y

        if x == goal.x and y == goal.y:
            return get_path(visited, start, goal)

        for i in range(4):
            xx = x+DX[i]
            yy = y+DY[i]
            if 0 <= xx and xx < W and 0 <= yy and yy < H and visited[yy][xx] == ' ':
                visited[yy][xx] = DIR[i]
                q.put(Index(xx, yy))
    return None

def get_path(m, start, goal):
    x = goal.x
    y = goal.y
    path = ''
    while x!=start.x or y!=start.y:
        path += m[y][x]
        if m[y][x] == 'N': ++y; break
        elif m[y][x] == 'S': --y; break
        elif m[y][x] == 'E': --x; break
        elif m[y][x] == 'W': ++x; break
        else: raise "ERROR OCCURRED"
    return path

map = []
#map = [['' for j in range(11)] for i in range(10)]
map = ['' for j in range(11)]

map[0] = "#####S####"
map[1] = "#........#"
map[2] = "#.###.#..#"
map[3] = "#...#.#..#"
map[4] = "###.#.#..#"
map[5] = "#...#.#..#"
map[6] = "#.###.#..#"
map[7] = "#...#.#..#"
map[8] = "###.###..#"
map[9] = "#.....#..#"
map[10] = "#####G####"
#for i in map:
#    print len(i)
#print len(map)
print solve(map, Index(0, 5), Index(10, 5))
