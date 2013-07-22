#include <iostream>

using namespace std;

void cancellation() {
  float f1, f2;
  f1 = 1.0000101f;
  f2 = 1.0000100f;

  printf("%20.18f\n", f1 - f2);
  printf("%20.18f\n", f1 + f2);
}

int main() {
  cancellation();
}
