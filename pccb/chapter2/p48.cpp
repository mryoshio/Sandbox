#include <cstdio>
#include <iostream>

using namespace std;

const int MAX_N = 1000;

int N, R;
int X[MAX_N];

void solve() {
    sort(X, X+N);
    int i=0, ans=0;
    while(i < N) {
        int s = X[i++];
        while (i<N && X[i] <= s+R) i++;
        int p = X[i-1];
        while (i<N && X[i] <= p+R) i++;
        ans++;
    }
    printf("%d\n", ans);
}

int main() {
    cout << "Input number of points" << endl;
    scanf("%d", &N);
    cout << "Input distance" << endl;
    scanf("%d", &R);
    cout << "Input position of each point" << endl;
    for (int i=0; i<N; i++) {
        scanf("%d", &X[i]);
    }
    solve();
}