#include <cstdio>
#include <stack>
#include <queue>

using namespace std;

const int MAX_N = 20;
int a[MAX_N];
int n, k;

bool dfs(int i, int sum) {
    if (i == n) return sum == k;

    if (dfs(i+1, sum)) return true;

    if (dfs(i+1, sum+a[i])) return true;

    return false;
}


int solve() {
    if (dfs(0, 0)) printf("Yes\n");
    else printf("No\n");
}


int main() {
    printf("input n >>");
    scanf("%d", &n);
    printf("input one value per line >>");
    for (int i=0; i<n; i++)
        scanf("%d", &a[i]);
    printf("input k >>");
    scanf("%d", &k);
    solve();
}
