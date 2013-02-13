#include <cstdio>
#include <algorithm>

using namespace std;

const int MIN_IDX = 0;
const int MAX_IDX = 1;
int x[1000000];

int* solve(int L, int n, int* ans) {
    ans[MIN_IDX] = 0;
    for (int i=0; i<n; i++) {
        ans[MIN_IDX] = max(ans[MIN_IDX], min(x[i], L-x[i]));
    }

    ans[MAX_IDX] = 0;
    for (int i=0; i<n; i++) {
        ans[MAX_IDX] = max(ans[MAX_IDX], max(x[i], L-x[i]));
    }

    return ans;
}

int main() {
    int L, n, ans[2];
    scanf("%d %d", &L, &n);
    for (int i = 0; i<n; i++)
        scanf("%d", &x[i]);
    solve(L, n, ans);
    printf("%d %d\n", ans[MIN_IDX], ans[MAX_IDX]);
}
