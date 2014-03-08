#include <iostream>
#include <vector>

using namespace std;

template<class In, class T>
In find1(In first, In last, const T& val) {
  while (first != last && *first != val) ++first;
  return first;
}

template<class In, class T>
In find2(In first, In last, const T& val) {
  for (In p = first; p != last; p++)
    if (*p == val) return p;
  return last;
}

void f(vector<int>& v, int x) {
  vector<int>::iterator p1 = find1(v.begin(), v.end(), x);
  vector<int>::iterator p2 = find2(v.begin(), v.end(), x);
  if (p1 != v.end()) {
    cout << "p1: found" << endl;
  } else {
    cout << "p1: not found" << endl;
  }
  if (p2 != v.end()) {
    cout << "p2: found" << endl;
  } else {
    cout << "p2: not found" << endl;
  }
}

int main() {
  vector<int> v {5, 6, 1, 2, 3, 4};
  f(v, 5);
  f(v, 50);
  f(v, 1);
}
