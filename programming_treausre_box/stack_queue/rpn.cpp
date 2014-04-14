#include <iostream>
#include <string>
#include <sstream>

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
    int i, v, n1, n2;
    string p;
    stringstream sstr;

    srand((unsigned int)time(NULL));
    do {
        for (i = 0; i < N; i++)
            cout << array[i] << " ";
        cout << endl;
        cout << "input number or operator (+, -, *, /, =): ";
        getline(cin, p);
        if (p == "+") {
            n2 = pop();
            n1 = pop();
            push(n1 + n2);
        } else if (p == "-") {
            n2 = pop();
            n1 = pop();
            push(n1 - n2);
        } else if (p == "*") {
            n2 = pop();
            n1 = pop();
            push(n1 * n2);
        } else if (p == "/") {
            n2 = pop();
            n1 = pop();
            push(n1 / n2);
        } else if (p == "=") {
        } else {
            sstr << p;
            sstr >> v;
            push(v);
            sstr.clear();
        }
    } while (p != "=");
    cout << "result is " << pop() << endl;
    return 1;
}
