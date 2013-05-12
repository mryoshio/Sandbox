#include "std_lib_facilities.h"

class Date {
public:
    enum Month {
        jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
    };
    Date(int yy, Month m, int dd)
        :y(yy), m(m), d(dd)
    {
    }
    int day() const;
    Month month() const;
    int year() const;
    
    void add_day(int n);
    void add_month(int n);
    void add_year(int n);

    int month() { return m; }

private:
    int y;
    Month m;
    int d;
};

void f() {
    Date d(2013, Date::jan, 12);
    const Date cd(2013, Date::feb, 12);
    cout << d.year() << endl;
    
    cout << d.day() << " - " << cd.day() << endl;
    //    d.add_day(1);
    //    cd.add_day(1);
}

int main() {
    f();
}

