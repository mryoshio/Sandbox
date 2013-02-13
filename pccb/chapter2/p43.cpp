#include <cstdio>
#include <algorithm>
#include <iostream>

using namespace std;

const int n = 6;
const int V[n] = {1, 5, 10, 50, 100, 500};

// input
int C[n];
int A;

void solve() {
    int ans = 0;
    for (int i=5; i>=0; i--) {
        int t = min(A/V[i], C[i]);
        A -= t*V[i];
        ans += t;
    }
    printf("%d\n", ans);
}

int main() {
    cout << "Input the price.\n";
    cin >> A;
    cout << "Input number of each coin.\n";
    for (int i=0; i<n; i++) {
        scanf("%d", &C[i]);
    }

    solve();
    return 0;
}
