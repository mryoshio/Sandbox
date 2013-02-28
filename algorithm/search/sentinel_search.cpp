#include <iostream>
#include <vector>

#define N 10
#define CEILING 30

using namespace std;

void sentinel_search(int s, vector<int> v) {

    cout << "search " << s << " ... ";

    int i = 0, t = v[N - 1];
    v[N - 1] = s;

    while (v[i] != s)
        i++;

    if (i < N - 1) {
        cout << "FOUND at " << i + 1 << endl;
        return;
    }

    if (s == t) {
        cout << "FOUND at " << N << endl;
        return;
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

    sentinel_search(rand() % CEILING + 1, v);

    vector<int>::iterator it = v.begin();
    while (it != v.end()) {
        cout << *it << " ";
        it++;
    }
    cout << endl;
}
