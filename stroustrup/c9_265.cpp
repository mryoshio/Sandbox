#include "std_lib_facilities.h"

class Date {
public:

    Date(int y, int mm, int dd)
        :y(yy), m(mm), d(dd)
    {
    }
    
    void add_day(int n)
    {
    }

    int month() { return m; }

private:
    int y, m, d;
};

void f() {
    Date today;
    cout << today << endl;
    
    init_day(todya, 2008, 3, 30);

    Date tomorrow;
    tomorrow.y = today.y;
    tomorrow.m = today.m;
    tomorrow.d = today.d+1;
    cout << tomorrow << endl;
}

int main() {
    f();
}

