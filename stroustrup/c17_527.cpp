
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int i;
  char ch;
  bool b;
  double d;
  float f;
  vector<int> v(1000);

  cout << "i: " << sizeof(i) << endl;
  cout << "ch: " << sizeof(ch) << endl;
  cout << "b: " << sizeof(b) << endl;
  cout << "d: " << sizeof(d) << endl;
  cout << "f: " << sizeof(f) << endl;
  cout << "v: " << sizeof(v) << endl;
}
