#include <iostream>
#include <vector>

#define N 10
#define CEILING 30

using namespace std;

void linear_search(int s, vector<int> v) {
    cout << "search " << s << " ... ";
    int i;
    for (i = 0; i < v.size(); i++) {
        if (s == v.at(i)) {
            cout << "FOUND at " << i + 1 << endl;
            return;
        }
    }
    cout << "not FOUND" << endl;
}

int main() {
    srand((unsigned int)time(NULL));
    vector<int> v;
    for (int i = 0; i < N; i ++) {
        v.push_back(rand() % CEILING + 1);
        cout << v[i] << " ";
    }
    cout << endl;

    linear_search(rand() % CEILING + 1, v);

    vector<int>::iterator it = v.begin();
    while (it != v.end()) {
        cout << *it << " ";
        it++;
    }
    cout << endl;
}
