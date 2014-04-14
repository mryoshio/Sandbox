#include <iostream>

#define N 10

using namespace std;

void comb_sort(int *array) {
    int i, tmp, sorted, gap;
    gap = N;
    do {
        gap = (gap * 10) / 13;
        if (gap == 0)
            gap = 1;
        
        sorted = true;
        for (i = 0; i < N - gap; i++) {
            if (array[i] > array[i + gap]) {
                sorted = false;
                tmp = array[i];
                array[i] = array[i + gap];
                array[i + gap] = tmp;
            }
        }
    } while((gap > 1) || !sorted);
}

int main() {
    srand((unsigned int)time(NULL));
    int i, array[N];
    for (i = 0; i < N; i++) {
        array[i] = rand() % 100 + 1;
        cout << array[i] << " ";
    }
    cout << endl;

    comb_sort(array);

    for (i = 0; i < N; i++)
        cout << array[i] << " ";
    cout << endl;
}
