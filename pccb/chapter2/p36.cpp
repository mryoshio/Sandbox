#include <cstdio>
#include <stack>
#include <queue>

using namespace std;

const int N = 100;
const int M = 100;
char field[N][M+1] = {
    {'W', '.', '.', '.', '.', '.', '.', '.', '.', 'W', 'W', '.'},
    {'.', 'W', 'W', 'W', '.', '.', '.', '.', '.', 'W', 'W', 'W'},
    {'.', '.', '.', '.', 'W', 'W', '.', '.', '.', 'W', 'W', '.'},
    {'.', '.', '.', '.', '.', '.', '.', '.', '.', 'W', 'W', '.'},
    {'.', '.', '.', '.', '.', '.', '.', '.', '.', 'W', '.', '.'},
    {'.', '.', 'W', '.', '.', '.', '.', '.', '.', 'W', '.', '.'},
    {'.', 'W', '.', 'W', '.', '.', '.', '.', '.', 'W', 'W', '.'},
    {'W', '.', 'W', '.', 'W', '.', '.', '.', '.', '.', 'W', '.'},
    {'.', 'W', '.', 'W', '.', '.', '.', '.', '.', '.', 'W', '.'},
    {'.', '.', 'W', '.', '.', '.', '.', '.', '.', '.', 'W', '.'}
};

void dfs(int x, int y) {
    field[x][y] = '.';

    for (int dx=-1; dx<=1; dx++) {
        for (int dy=-1; dy<=1; dy++) {
            int nx=x+dx, ny=y+dy;
            if (0<=nx && nx<N && 0<= ny && ny < M && field[nx][ny] == 'W') dfs(nx, ny);
        }
    }
    return;
}

int solve() {
    int res = 0;
    for (int i=0; i<N; i++) {
        for (int j=0; j<M; j++) {
            if (field[i][j] == 'W') {
                dfs(i, j);
                res++;
            }
        }
    }
    return res;
}


int main() {
    printf("answer is %d\n", solve());
}
