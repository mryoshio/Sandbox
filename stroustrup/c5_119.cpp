#include "std_lib_facilities.h"


int main() {
    vector<int> v;
    int x;
    cout << "input i: ";
    while (cin >> x) v.push_back(x);
    try {
        for (int i=0; i<=v.size(); i++) {
            cout << "v[" << i << "] == " << v[i] << endl;
        }
    } catch (out_of_range) {
        cerr << "Exception: wrong " << endl;
        return 1;
   } 
}


