#include <cstdio>
#include <algorithm>
#include <iostream>

using namespace std;


const int MAX_N=100000;
pair<int, int> itv[MAX_N];

// input
int N, S[MAX_N], T[MAX_N];

void solve() {
    for (int i=0; i<N; i++) {
        itv[i].first = T[i];
        itv[i].second = S[i];
    }
    sort(itv, itv+N);
    int ans = 0, t = 0;
    for (int i=0; i<N; i++) {
        if (t<itv[i].second) {
            ans++;
            t = itv[i].first;
        }
    }
    printf("%d\n", ans);
}

int main() {
    cout << "Input number of tasks.\n";
    scanf("%d", &N);
    for (int i=0; i<N; i++) {
        cout << "Input start of task " << i << endl;
        scanf("%d", &S[i]);
        cout << "Input end of task " << i << endl;
        scanf("%d", &T[i]);
    }
    solve();
}
