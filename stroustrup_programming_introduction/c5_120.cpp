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
    } catch (runtime_error& e) {
        cerr << "Exception: wrong " << e.what() << endl;
        return 1;
   } 
}


