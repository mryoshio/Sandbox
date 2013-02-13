#include <cstdio>
#include <algorithm>

using namespace std;

const int MAX_N = 100;
int a[MAX_N];

int solve(int n) {
    int ans = 0;
    for (int i=0; i<n; i++) {
        for (int j=i+1; j<n; j++) {
            for (int k=j+1; k<n; k++) {
                //  printf("%d %d %d", a[i], a[j], a[k]);
                int len = a[i]+a[j]+a[k];
                int ma = max(a[i], max(a[j], a[k]));
                int rest = len-ma;
                if (ma < rest) {
                    ans = max(ans, len);
                }
            }
        }
    }
    return ans;
}

int main() {
    int n;
    scanf("%d", &n);
    for (int i = 0; i<n; i++)
        scanf("%d", &a[i]);
    int ans = solve(n);
    printf("%d\n", ans);
}
