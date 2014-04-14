#include <iostream>

using namespace std;

void test_float() {
  float f1, f2;
  f1 = 0.1f;
  f2 = 0.100000001f;

  printf("%20.18f\n", f1);
  printf("%20.18f\n", f2);
}

void test_double() {
  double d1, d2;
  d1 = 0.1;
  d2 = 0.100000001;

  printf("%20.18f\n", d1);
  printf("%20.18f\n", d2);
}

int main() {
  test_float();
  test_double();

}
