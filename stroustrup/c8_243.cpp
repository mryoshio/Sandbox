#include "std_lib_facilities.h"

void ggg(double x) {
    int x1 = x;
    int x2 = int(x);

    cout << x << endl;
    cout << x1 << endl;
    cout << x2 << endl;
}

int main() {
    ggg(9999.999999);
}

