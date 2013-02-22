#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

#define MAX 10

int array[MAX];

void bubble_sort() {
    int i, k, tmp;
    bool changed = false;
    k = 0;
    do {
        changed = false;
        for (int i = 0; i < MAX-1-k; i++) {
            if (array[i] > array[i+1]) {
                tmp = array[i];
                array[i] = array[i+1];
                array[i+1] = tmp;
                changed = true;
            }
        }
        k++;
    } while (changed);
}

int main() {
    srand((unsigned int)time(NULL));
    for (int i = 0; i < MAX; i++) {
        array[i] = rand() % 100 + 1;
        cout << array[i] << " ";
    }
    cout << endl;
    
    bubble_sort();

    for (int i = 0; i < MAX; i++)
        cout << array[i] << " ";
    cout << endl;
}
