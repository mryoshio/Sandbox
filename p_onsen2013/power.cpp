#include <cassert>
#include <math.h>
#include <iostream>

using namespace std;

double multi(int x, int y) {
    double ml = 0;
    while (x > 1) {
        if (x % 2 == 0) {
            y <<= 1;
            x >>= 1;
        } else {
            ml += y;
            x -= 1;
        }
    }
    y += ml;
    return y;
}

double power(int x, int n) {
    if (n == 0)
        return 1;
    if (n % 2 == 0) {
        return power(multi(x, x), n / 2);
    } else {
        return multi(x, power(x, n - 1));
    }
}

int main() {
    cout << "++ assert begin ++ " << endl;
    cout << power(10, 10) << endl;
    assert(pow(5, 5) == power(5, 5));
    assert(pow(10, 10) == power(10, 10));
    assert(pow(2, 1) == power(2, 1));
    assert(pow(2, 0) == power(2, 0));
    cout << "++ assert end, no problem occurred ++" << endl;
}
