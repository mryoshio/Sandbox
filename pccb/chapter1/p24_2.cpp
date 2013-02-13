#include <cstdio>
#include <algorithm>

using namespace std;

const int MIN_IDX = 0;
const int MAX_IDX = 1;
int x[1000000];

int* solve(int L, int n) {

    int* ary = (int*) malloc(sizeof(int) * 2);

    ary[MIN_IDX] = 0;
    for (int i=0; i<n; i++) {
        ary[MIN_IDX] = max(ary[MIN_IDX], min(x[i], L-x[i]));
    }

    ary[MAX_IDX] = 0;
    for (int i=0; i<n; i++) {
        ary[MAX_IDX] = max(ary[MAX_IDX], max(x[i], L-x[i]));
    }
    return ary;
}

int main() {
    int L, n;
    scanf("%d %d", &L, &n);
    for (int i = 0; i<n; i++)
        scanf("%d", &x[i]);
    int* ary = solve(L, n);
    printf("%d %d\n", ary[MIN_IDX], ary[MAX_IDX]);
}
