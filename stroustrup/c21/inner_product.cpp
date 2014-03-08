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
T inner_producty(In first, In last, In first2, T ini) {
  while (first != last) ini += *first++ * *first2++;
  return ini;
}

template<class In, class T, class Op, class Op2>
T inner_productyy(In first, In last, In first2, T ini, Op op, Op2 op2) {
  while (first != last) ini = op(ini, op2(*first++, *first2++));
  return ini;
}

int plusy(int v, int vv) {
  return v + vv;
}

int multiy(int v, int vv) {
  return v * vv;
}

int main() {
  list<int> l {1, 2, 3, 4};
  list<int> l2 {5, 6, 7, 8};
  list<int>::iterator b = l.begin();
  list<int>::iterator e = l.end();
  list<int>::iterator b2 = l2.begin();

  dump(b, e);
  dump(b2, l2.end());

  int x = inner_product(b, e, b2, 0);
  cout << "inner_product: " << x << endl;

  x = inner_producty(b, e, b2, 0);
  cout << "inner_producty: " << x << endl;

  x = inner_productyy(b, e, b2, 0, plusy, multiy);
  cout << "inner_productyy: " << x << endl;

  return 0;
}
