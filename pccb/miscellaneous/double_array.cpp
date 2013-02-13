#include <cstdio>

using namespace std;

const int N = 100;
const int M = 100;
int field[N][M+1] = {
    {0, 1, 2, 3, 4},
    {0, 1, 2, 3, 4},
    {0, 1, 2, 3, 5}
};

int main() {
    for ( int i=0; i<N; i++) {
        for ( int j=0; j<N; j++) {
            printf("%d", field[i][j]);
        }
    }
}
