#include <cstdio>
#include <iostream>

using namespace std;

int N;
const int MAX_N=2000;
char S[MAX_N+1];

void solve() {
    int a =0, b=N-1;
    while(a<=b) {
        bool left = false;
        for(int i= 0; a+i<=b; i++) {
            if (S[a+i] < S[b-i]) {
                left = true;
                break;
            }
            else if (S[a+i] > S[b-i]) {
                left = false;
                break;
            }
        }
        if (left) putchar(S[a++]);
        else putchar(S[b--]);
    }
    putchar('\n');
}

int main() {
    cout << "Input number of new word\n";
    scanf("%d", &N);
    cout << "Input original word\n";
    cin >> S;
    solve();
}
