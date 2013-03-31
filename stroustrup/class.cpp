#include <iostream>

using namespace std;

class Year {
    static const int min = 1800;
    static const int max = 2200;
public:
    class Invalid {};
    Year(int x) : y(x) { if (x < min || max <= x) throw Invalid(); }
    int year() { return y; }
private:
    int y;
};

class Date {
public:
    enum Month {
        jan=1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
    };
    class Invalid {};
    Date(Year yy, Month mm, int dd) : y(yy), m(mm), d(dd) {
        if (! check()) {
            cout << "invalid input for Date." << endl;
            throw Invalid();
        }
    }

    void add_day(int n) {
        cout << "add day" << endl;
    }
    Year year() { return y; }
    Month month() { return m; }
    int day() { return d; }
    string format() {
        char buf[10];
        sprintf(buf, "%d/%d/%d", y.year(), m, d);
        return buf;
    }
    
private:
    Year y;
    Month m;
    int d;
    bool check();
};

bool Date::check() {
    if (m < 1 || 12 < m) { return false; }
    return true;
}

int main() {
    try {
        Date d(1999, Date::mar, 1);
        cout << d.format() << endl;
        Date e(1999, Date::sep, 1);
        Date f(1700, Date::sep, 1);
    } catch(Date::Invalid) {
        cout << "Invalid thrown" << endl;
    }
}
