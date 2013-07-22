#include <iostream>

using namespace std;

void no_end() {
  int n;
  float f1;

  // never end
  // for (f1 = 0.0f, n = 0; f1 != 5.0f; f1 += 0.1f) {

  // strange
  // for (f1 = 0.0f, n = 0; f1 < 5.0f; f1 += 0.1f) {

  // OK
  for (f1 = 0.0f, n = 0; n <= 50; n++) {
    f1 = 0.1f * n;
    cout << n << " times passed: " << f1 << endl;
  }
}

int main() {
  no_end();
}
