#include <iostream>
#include <string>

#define N 10

int array[N];
int pointer = 0;

using namespace std;

void push(int v) {
    if (pointer == N) {
        cout << "stack overflow occurs!" << endl;
        exit(0);
    } else {
        array[pointer] = v;
        pointer++;
    }
}

int pop() {
    if (pointer == 0) {
        cout << "stack underflow occurs!" << endl;
        exit(0);
    } else {
        pointer--;
        int v = array[pointer];
        array[pointer] = 0;
        return v;
    }
}

int main() {
    int i, v;
    string p;
    srand((unsigned int)time(NULL));
    do {
        for (i = 0; i < N; i++)
            cout << array[i] << " ";
        cout << endl;
        cout << "input 'push' or 'pop' ('e' for end): ";
        getline(cin, p);
        if (p == "push") {
            v = rand() % 100 + 1;
            cout << "------- push " << v << endl;
            push(v);
        } else if (p == "pop") {
            cout << "------- pop " << pop() << endl;;
        }
    } while (p != "e");
    return 1;
}
