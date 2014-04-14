#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

struct Reading {
  int hour;
  double temperature;
  Reading(int h, double t): hour(h), temperature(t) {}
};

int main() {
  cout << "Enter input file name: ";
  string name;
  cin >> name;

  ifstream ist(name.c_str());
  if (!ist) {
    cout << "can not open input file: " <<  name;
    return 1;
  }

  cout << "Enter name of output file: ";
  cin >> name;
  ofstream ost(name.c_str());
  if (!ost) {
    cout << "can not open output file " << name;
    return 1;
  }

  vector<Reading> temps;
  int hour;
  double temperature;

  while (ist >> hour >> temperature) {
    if (hour < 0 || 23 < hour) {
      cout << "hour is out of range: " << hour;
      return 1;
    }
    temps.push_back(Reading(hour, temperature));
  }

  for (int i = 0; i < temps.size(); ++i)
    ost << '(' << temps[i].hour << ',' << temps[i].temperature << ")\n";
}
