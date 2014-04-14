#include <iostream>

using namespace std;

char number[] = "1234";
char created_num[8];

void make_rpn(int num, int exp) {
  static int is_used[4] = {0};
  int i;

  if (num + exp == 7) {
    created_num[7] = '\0';
    cout << created_num << endl;
    return;
  }
  
  if (num - exp >= 2) {
    created_num[num + exp] = '+';
    make_rpn(num, exp + 1);
    created_num[num + exp] = '-';
    make_rpn(num, exp + 1);
    created_num[num + exp] = '*';
    make_rpn(num, exp + 1);
    created_num[num + exp] = '/';
    make_rpn(num, exp + 1);
  }
  if (num <= 3) {
    for (i = 0; i < 4; i++) {
      if (is_used[i] == 0) {
        is_used[i] = 1;
        created_num[num + exp] = number[i];
        make_rpn(num + 1, exp);
        is_used[i] = 0;
      }
    }
  }
}

int main(void) {
  make_rpn(0, 0);
  return EXIT_SUCCESS;
}
