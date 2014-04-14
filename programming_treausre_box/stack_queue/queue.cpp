#include <iostream>
#include <string>

#define Q_SIZE 10
#define Q_MAX (Q_SIZE + 1)
#define Q_EMPTY -1

int q[Q_MAX];
int q_first = 0;
int q_last = 0;

using namespace std;

void enqueue(int v) {
    if ((q_last + 1) % Q_MAX == q_first) {
        cout << "queue is full!" << endl;
    } else {
        q[q_last] = v;
        q_last = (q_last + 1) % Q_MAX;
    }
}

int dequeue() {
    int r;
    if (q_first == q_last) {
        return Q_EMPTY;
    } else {
        r = q[q_first];
        q_first = (q_first + 1) % Q_MAX;
        return r;
    }
}

void print_q() {
    int i;
    for (i = q_first; i != q_last; i = (i + 1) % Q_MAX)
        cout << q[i] << " ";
    cout << endl;
}

int main() {
    int v;
    string s;
    do {
        print_q();
        cout << "input 'enq' or 'deq' ('e' for end): ";
        getline(cin, s);
        if (s == "enq") {
            v = rand() % 100 + 1;
            cout << "------- enqueue " << v << endl;
            enqueue(v);
        } else if (s == "deq") {
            cout << "------- dequeue " << dequeue() << endl;;
        }
    } while (s != "e");
}
