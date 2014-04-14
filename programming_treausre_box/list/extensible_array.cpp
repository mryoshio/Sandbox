#include <iostream>

using namespace std;

int main() {
    int input, size, cnt;
    int *temp, *array;
    cnt = 0;
    size = 10;
    array = (int *)malloc(sizeof(int) * size);
    do {
        cout << "Input number you like (0 for finsh) ";
        cin >> input;
        array[cnt] = input;
        cnt++;
        if (cnt == size) {
            temp = (int *)malloc(sizeof(int) * size * 2);
            memcpy(temp, array, sizeof(int) * size);
            free(array);
            array = temp;
            size *= 2;
        }
    } while (input != 0);
    for (int i = 0; i < size; i++) {
        cout << array[i] << " ";
    }
    cout << endl;
}
