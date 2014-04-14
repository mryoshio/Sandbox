#include <numeric>
#include <iostream>
#include <list>

using namespace std;

template<class T>
void dump(T first, T last) {
  cout << "dump: [" << *first++;
  while (first != last) cout << ", " << *first++;
  cout << "]" << endl;
}

template<class In, class T>
T accumulatey(In first, In last, T ini) {
  while (first != last) ini += *first++;
  return ini;
}

template<class In, class T, class Op>
T accumulateyy(In first, In last, T ini, Op op) {
  while (first != last) ini = op(ini, *first++);
  return ini;
}

int plusy(int v, int vv) {
  return v + vv;
}

int main() {
  list<int> l {1, 2, 3, 4};
  list<int>::iterator b = l.begin();
  list<int>::iterator e = l.end();

  dump(b, e);

  int x = accumulate(b, e, 0);
  cout << "accumulate: " << x << endl;

  x = accumulatey(b, e, 0);
  cout << "accumulatey: " << x << endl;

  x = accumulateyy(b, e, 0, plusy);
  cout << "accumulateyy: " << x << endl;

  return 0;
}
