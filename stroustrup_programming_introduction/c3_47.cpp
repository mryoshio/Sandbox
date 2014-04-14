#include "std_lib_facilities.h"

int main() {
    cout << "Please enter your first and last name\n";
    string first, last;
    cin >> first >> last;
    if (first < last) {
        cout << "pat a: " << first << " " << last << endl;
    } else {
        cout << "pat b: " << last << " " << first << endl;
    }
}

