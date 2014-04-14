#include <iostream>

using namespace std;

int main() {
    int *array = new int[3];
    array[0] = 0;
    array[1] = 1;
    array[2] = 2;
    array[3] = 3;
    array[4] = 4;
    array[5] = 5;
    for (int i = 0; i < 6; i++)
        cout << array[i] << endl;
    return 1;
}
