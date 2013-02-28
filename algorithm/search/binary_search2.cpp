#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

#define N 10

void binary_search(int t, int *array) {
    cout << "search " << t << endl;
    int l = 0, r = N-1, m;
    while (l < r) {
        m = (l + r) / 2;
        if (array[m] < t) {
            l = m + 1;
        } else {
            r = m;
        }
    }
    if (array[l] == t) {
        cout << t << " found at " << l + 1 << endl;
        return;
    }
    cout << "not found" << endl;
}

int main() {

    srand((unsigned int)time(NULL));

    int i, t, array[N];

    for (i = 0; i < N; i++)
        array[i] = rand() % 100 + 1;

    sort(array, array+N);

    for (i = 0; i < N; i++) {
        cout << array[i] << " ";
    }
    cout << endl;

    cout << "What number do you search? ";
    cin >> t;

    binary_search(t, array);
}
