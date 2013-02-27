#include <iostream>

#define MAX 10

using namespace std;

void quick_sort(int bottom, int top,int data[]) {
    if (bottom >= top)
        return;
    int div = data[bottom];
    int lower = bottom;
    int upper = top;
    int temp;
    while (lower < upper) {
        while (lower <= upper && data[lower] <= div)
            lower += 1;
        while (lower <= upper && data[upper] > div)
            upper -=1;
        if (lower < upper) {
            temp = data[lower];
            data[lower] = data[upper];
            data[upper] = temp;
        }
    }
    temp = data[bottom];
    data[bottom] = data[upper];
    data[upper] = temp;
    quick_sort(bottom, upper-1, data);
    quick_sort(upper+1, top, data);
}

int main() {
    srand((unsigned int)time(NULL));
    int i, data[MAX];
    for (i = 0; i < MAX; i++) {
        data[i] = rand() % 100 + 1;
        cout << data[i] << " ";
    }
    cout << endl;

    quick_sort(0, MAX-1, data);

    for (i = 0; i < MAX; i++) {
        cout << data[i] << " ";
    }
    cout << endl;
}
