#include <iostream>

using namespace std;

void joho_ochi() {
  unsigned int n;
  float f1, f2;
  f1 = 1000000.0f;
  f2 = 0.000001f;

  for (n = 0; n < 1000000; n ++)
    f1 += f2;

  printf("%0.1f\n", f1);
}

int main() {
  joho_ochi();
}
