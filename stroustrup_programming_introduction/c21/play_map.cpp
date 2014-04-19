#include <map>
#include <string>
#include <iostream>
#include <iterator>

using namespace std;

int main() {
  map<string, double> dow_price;
  dow_price["MMM"] = 81.86;
  dow_price["AA"] = 34.69;
  dow_price["MO"] = 54.45;

  dow_price.insert(make_pair("BA", 101.22));
  dow_price.insert(make_pair("BB", 251.22));
  dow_price.insert(make_pair("BC", 31.22));

  map<string, double>::iterator it;
  for (it = dow_price.begin(); it != dow_price.end(); it++)
    cout << (*it).first << " => " << (*it).second << endl;
  return 0;
}
