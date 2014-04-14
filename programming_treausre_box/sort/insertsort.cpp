#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

#define MAX 10

void insert_sort(int *array) {
    int i, sorted, temp, insert;
    for (sorted = 0; sorted < MAX - 1; sorted++) {
        insert = array[sorted + 1];
        for (i = 0; i <= sorted; i++) {
            if (array[i] > insert)
                break;
        }
        while (i <= sorted + 1) {
            temp = insert;
            insert = array[i];
            array[i] = temp;
            i++;
        }
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

    insert_sort(array);

    for (int i = 0; i < MAX; i ++)
        cout << array[i] << " ";
    cout << endl;
}
