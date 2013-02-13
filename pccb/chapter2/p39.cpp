#include <cstdio>

using namespace std;

/**
 Two function, permutation1 and permutation2 have same function.
 The permutation1 is wrote with recursiveness, while permutation2 is
 implemented using next_permutation in c++ algorithm library.
*/

const int N = 100; // Array length should be no more than N

bool used[N]; // only used in permutation1
int perm[N]; // only used in permutation1

void permutation1(int pos, int n) {
    if (pos == n){
        // dump array
        for (int i=0; i<n; i++)
            printf("%d, ", perm[i]);
        puts("");
        return;
    }
    for (int i=0; i<n; i++) {
        if(!used[i]) {
            perm[pos] = i;
            used[i] = true;
            permutation1(pos+1, n);
            used[i] = false;
        }
    }
    return;
}

#include <algorithm>

void permutation2(int n) {
    int perm2[N];
    for (int i=0; i<n; i++) {
        perm2[i] = i;
    }
    do {
        // dump array
        for (int i=0; i<n; i++)
            printf("%d, ", perm2[i]);
        puts("");
    } while (next_permutation(perm2, perm2+n));
    return;
}

int main() {
    int n = 3;
    puts("===== permutaion1 =====");
    permutation1(0, n);
    puts("===== permutaion2 =====");
    permutation2(n);
}
