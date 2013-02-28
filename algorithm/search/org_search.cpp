#include <iostream>

#define N 10

using namespace std;

void organization_search(int t, int *array) {
    int i, tmp;
    while (array[i] != t && i < N)
        i++;
    if (i < N && 0 < N) {
        tmp = array[i];
        array[i] = array[i - 1];
        array[i - 1] = tmp;
    }
}

int main() {
    int t, array[N];
    srand((unsigned int)time(NULL));

    for (int i = 0; i < N; i++)
        array[i] = rand() % 100 + 1;

    while (true) {
        for (int i = 0; i < N; i++)
            cout << array[i] << " ";
        cout << endl;

        cout << "What number do you search? ";
        cin >> t;
        organization_search(t, array);
    }
}
