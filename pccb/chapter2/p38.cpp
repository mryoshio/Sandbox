#include <cstdio>
#include <queue>

using namespace std;

typedef pair<int, int> P;

const int N = 10;
const int M = 10;
const int INF = 100000000;

char maze[N][M+1] = {
    {'#', 'S', '#', '#', '#', '#', '#', '#', '.', '#'},
    {'.', '.', '.', '.', '.', '.', '#', '.', '.', '#'},
    {'.', '#', '.', '#', '#', '.', '#', '#', '.', '#'},
    {'.', '#', '.', '.', '.', '.', '.', '.', '.', '.'},
    {'#', '#', '.', '#', '#', '.', '#', '#', '#', '#'},
    {'.', '.', '.', '.', '#', '.', '.', '.', '.', '#'},
    {'.', '#', '#', '#', '#', '#', '#', '#', '.', '#'},
    {'.', '.', '.', '.', '#', '.', '.', '.', '.', '.'},
    {'.', '#', '#', '#', '#', '.', '#', '#', '#', '.'},
    {'.', '.', '.', '.', '#', '.', '.', '.', 'G', '#'}
};
int d[N][M];

int sx=0, sy=1;
int gx=9, gy=8;

int dx[4] = {1, 0, -1, 0};
int dy[4] = {0, 1, 0, -1};

int bfs() {
    queue<P> que;

    for (int i=0; i<N; i++) {
        for (int j=0; j<M; j++) {
            d[i][j] = INF;
        }
    }

    que.push(P(sx, sy));
    d[sx][sy] = 0;

    while (que.size()) {
        P p = que.front(); que.pop();
        if (p.first == gx && p.second == gy) break;
        for (int i=0; i<4; i++) {
            int nx = p.first+dx[i];
            int ny = p.second+dy[i];
            if (0 <= nx && nx<N && 0<=ny && ny<M && maze[nx][ny] != '#' && d[nx][ny]==INF) {
                que.push(P(nx, ny));
                d[nx][ny] = d[p.first][p.second]+1;
            }
        }
    }
    return d[gx][gy];
}

int solve() {
    return bfs();
}


int main() {
    printf("answer is %d\n", solve());
}
