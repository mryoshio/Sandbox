#include <iostream>

using namespace std;

void output() {
  cout << 1234 << endl;
  cout << hex << 1234 << endl;
  cout << oct << 1234 << endl;
}

void output2() {
  cout << 1234 << '\t' << hex << 1234 << '\t' << oct << 1234 << '\t' << endl;
  cout << showbase << dec;
  cout << 1234 << '\t' << hex << 1234 << '\t' << oct << 1234 << '\t' << endl;
}

void output3() {
  cout << 1234.56789 << "\t\t(general)" << endl
       << fixed << 1234.56789 << "\t(fixed)" << endl
       << scientific << 1234.56789 << "\t(scientific)" << endl;
  
}

void calc_old(int c_year) {
  int born, old;

  cout << "input your birth year: ";
  cin >> born;
  old = c_year - born;

  cout << dec;
  cout << born << "\t(decimal)" << endl;
  cout << hex << born << "\t(hexadecimal)" << endl;
  cout << oct << born << "\t(octal)" << endl;
}

void calc_input() {
  int a, b, c, d;

  cout << "input 4 numbers: ";
  cin >> a >> hex >> b >> oct >> c >> d;
  cout << a << '\t' << b << '\t' << c << '\t' << d << endl;
}

int main() {
  // output();
  // output2();
  output3();
  // calc_old(2013);
  // calc_input();
}
