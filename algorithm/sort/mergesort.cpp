#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

#define MAX 10

void merge_sort(int n, int* data, int offset) {
    if (n < 2)
        return;
    int i, j, k;
    int m = n/2;
    merge_sort(m, data, offset);
    merge_sort(n-m, data, offset+m);
    int buf[m];
    for (i = 0; i < m; i++)
        buf[i] = data[offset+i];
    j = m;
    i = k = 0;
    while (i < m && j < n) {
        if (buf[i] <= data[offset+j]) {
            data[offset+k] = buf[i];
            i++;
        } else {
            data[offset+k] = data[offset+j];
            j++;
        }
        k++;
    }
    while (i < m) {
        data[offset+k] = buf[i];
        k++;
        i++;
    }
}

int main() {
    int array[MAX];
    srand((unsigned int)time(NULL));
    for (int i = 0; i < MAX; i ++) {
        array[i] = rand() % 100 + 1;
        cout << array[i] << " ";
    }
    cout << endl;

    merge_sort(MAX, array, 0);

    for (int i = 0; i < MAX; i ++)
        cout << array[i] << " ";
    cout << endl;
    
    

    
}
