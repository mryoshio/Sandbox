#include "std_lib_facilities.h"

int main() {
    char a;
    cout << "Please enter a one number between 0 and 10:\n";
    cin >> a;
    switch (a) {
    case '0': case '2': case '4': case '6': case '8':
        cout << "input '" << a << "' is even.\n";
        break;
    case '1': case '3': case '5': case '7': case '9':
        cout << "input '" << a << "' is odd.\n";
        break;
    default:
        cout << "input '" << a << "' is not valid.\n";
        break;
    }
}
