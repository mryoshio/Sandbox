#include "std_lib_facilities.h"

int square(int i) {
    return i*i;
}

int main() {
    const int max = 5;
    vector<int> v(max);
    for (int i=0; i<v.size(); i++) {
        v[i] = square(i);
    }

    cout << "size: " << v.size() << "\n";

    v.push_back(99);

    cout << "size: " << v.size() << "\n";

    for (int i=0; i<v.size(); i++) 
        cout << v[i] << "\n";
}
