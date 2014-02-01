#include <iostream>
#include <iomanip>

using namespace std;

inline ios_base& general(ios_base& b) {
  b.setf(ios_base::fmtflags(0), ios_base::floatfield);
  return b;
}

void generaltest() {
  float f = 1234.56789;
  
  cout << f << '\t'
       << fixed << f << '\t'
       << scientific << f << endl
       << f << endl;
  cout << f << endl;
  cout << general << f << '\t'
       << fixed << f << '\t'
       << scientific << f << endl;
}

void generaltest2() {
  for (int i = 0; i < 3; i ++) {
    cout << i << " time -----------" << endl;
    cout << general << 12334.56789 << endl
         << fixed << 12334.56789 << endl
         << scientific << 12334.56789 << endl;
  }
}

void fieldtest() {
  cout << 123456
       << '|' << setw(4) << 123456 << '|'
       << setw(8) <<  123456 << '|'
       << 123456 << endl;
}

void fieldtest2() {
  cout << setw(10) << "taro" << '|' << setw(10) << "yamada" << '|' << "taro@gmail.com" << endl
       << setw(10) << "jiro" << '|' << setw(10) << "takahashi" << '|' << "takahashijiro@gmail.com" << endl
       << setw(10) << "shinnosuke" << '|' << setw(10) << "tanaka" << '|' << "tanaka@gmail.com" << endl
       << setw(10) << "hanako" << '|' << setw(10) << "yamamoto" << '|' << "hanako@gmail.com" << endl
       << setw(10) << "kaori" << '|' << setw(10) << "suzuki" << '|' << "kaori.suzuki@gmail.com" << endl;
}

int main() {
  // generaltest();
  // generaltest2();
  // fieldtest();
  fieldtest2();
}
