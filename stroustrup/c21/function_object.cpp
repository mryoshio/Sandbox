#include <iostream>
#include <vector>

using namespace std;

template<class In, class Pred>
In findy_if(In first, In last, Pred pred) {
  while (first != last && ! pred(*first)) ++first;
  return first;
}

class Larger_than {
  int v;
public:
  Larger_than(int vv) : v(vv) {}
  bool operator()(int x) const { return x > v; }
};

int main() {
  vector<int> v {5, 6, 1, 2, 3, 21};

  while (true) {
    int i;
    cout << "i (not 0): "; cin >> i;
    if (i == 0) break;
    vector<int>::iterator p = findy_if(v.begin(), v.end(), Larger_than(i));
    if (p == v.end()) {
      cout << "thre is no number than " << i << endl;
    } else {
      cout << "v[" << p - v.begin() << "] ";
      cout << *p << " is larger than " << i << endl;
    }
  }
  return 0;
}
