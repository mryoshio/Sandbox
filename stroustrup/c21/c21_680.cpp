#include <iostream>
#include <vector>

using namespace std;

template<class In, class Pred>
In findy_if(In first, In last, Pred pred) {
  while (first != last && ! pred(*first)) ++first;
  return first;
}

bool odd(int x) {
  return (x & 1);
}

int val;

bool larger_than_v(int x) {
  return x > val;
}

int main() {
  vector<int> v {5, 6, 1, 2, 3, 21};
  //vector<int> v {5, 6, 1, 2, 3, 4};

  /*
  vector<int>::iterator p = findy_if(v.begin(), v.end(), odd);
  if (p == v.end()) {
    cout << "no odd" << endl;
  } else {
    cout << "odd exists" << endl;
  }
  */
  val = 20;
  vector<int>::iterator p = findy_if(v.begin(), v.end(), larger_than_v);
  if (p == v.end()) {
    cout << "no number than val" << endl;
  } else {
    cout << "number exists than val" << endl;
  }
  return 0;
}
