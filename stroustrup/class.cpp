#include <iostream>

using namespace std;

class Date {
public:
    class Invalid {};
    Date(int yy, int mm, int dd) : y(yy), m(mm), d(dd) {
        if (! check()) throw Invalid();
    }

    void add_day(int n) {
        cout << "add day" << endl;
    }
    int year() { return y; }
    int month() { return m; }
    int day() { return d; }
    string format() { 
        char buf[10];
        sprintf(buf, "%d/%d/%d", y, m, d);
        return buf;
    }
    
private:
    int y, m, d;
    bool check();
};

bool Date::check() {
    if (m < 1 || 12 < m) { return false; }
    return true;
}

int main() {
    try {
        Date d(1999, 12, 1);
        cout << d.format() << endl;
        Date e(1999, 13, 1);
    } catch(Date::Invalid) {
        cout << "Invalid thrown" << endl;
    }
}
