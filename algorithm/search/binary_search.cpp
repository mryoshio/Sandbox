#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

#define MAX 10

int array[MAX];

void binary_search(int target) {
    //    cout << target << endl;
    int left = 0;
    int right = MAX-1;
    int mid = (left+right)/2;
    while (left <= right) {
        if (array[mid] == target) {
            cout << target << " is at " << mid;
            return;
        }
        if (array[mid] < target) {
            left = mid+1;
        } else {
            right = mid-1;
        }
    }
    cout << "not found" << endl;
}

int main() {
    srand((unsigned int)time(NULL));
    int i, target;
    cout << "--- init array" << endl;
    for (i = 0; i < MAX; i++) {
        array[i] = rand() % 100 + 1;
        cout << array[i] << " ";
    }
    cout << endl;

    sort(array, array+MAX);
    cout << "--- after sort" << endl;
    for (i = 0; i < MAX; i++)
        cout << array[i] << " ";
    cout << endl;

    cout << "What number do you search? ";
    cin >> target;

    binary_search(target);
}
