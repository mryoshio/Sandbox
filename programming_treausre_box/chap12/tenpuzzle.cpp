#include <iostream>

#define STACK_SIZE 10
//#define DEBUG

using namespace std;

typedef struct t_fraction {
  int numerator;
  int denominator;
} FRACTION;

FRACTION stack[STACK_SIZE];
int top = 0;
char number[4];
char created_num[8];

void push(FRACTION *value) {
  if (top != STACK_SIZE) {
    stack[top].numerator = value->numerator;
    stack[top].denominator = value->denominator;
    top++;
  } else {
    cout << "stackoverflow" << endl;
    exit(EXIT_FAILURE);
  }
}

void pop(FRACTION *ret) {
  top--;
  if (top >= 0) {
    ret->numerator = stack[top].numerator;
    ret->denominator = stack[top].denominator;
    return;
  } else {
    cout << "stackunderflow" << endl;
    exit(EXIT_FAILURE);
  }
}

void debug_stack() {
  int c;
  cout << "stack [";
  for (c = 0; c < STACK_SIZE - 1; c++) {
    cout << stack[c].numerator << '/' << stack[c].denominator << ", ";
  }
  cout << stack[c].numerator << '/' << stack[c].denominator;
  cout << "] and top position is => " << top << endl;
}

int calc_rpn(char* rpn) {
  int c;
  FRACTION st1, st2;

  c = 0;
  while (c < sizeof(rpn) && rpn[c] != '\0') {
    if (rpn[c] >= '0'&& rpn[c] <= '9') {
      st1.numerator = rpn[c] - '0';
      st1.denominator = 1;
      push(&st1);
    } else if (rpn[c] == ' ') {
      // do nothing if space
    } else {
      pop(&st1);
      pop(&st2);
#ifdef DEBUG
      debug_stack();
      cout << rpn[c] << endl;;
#endif
      if (rpn[c] == '+') {
        st2.numerator = st2.numerator * st1.denominator + st1.numerator * st2.denominator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (rpn[c] == '-') {
        st2.numerator = st2.numerator * st1.denominator - st1.numerator * st2.denominator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (rpn[c] == '*') {
        st2.numerator = st2.numerator * st1.numerator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (rpn[c] == '/') {
        st2.numerator = st2.numerator * st1.denominator;
        st2.denominator = st2.denominator * st1.numerator;
        if (st2.denominator == 0) {
          cout << " => 0 division error";
          return numeric_limits<int>::max();
        }
        push(&st2);
      } else {
        cout << "Invalid character error!" << endl;
        exit(EXIT_FAILURE);
      }
    }
    c++;
  }
#ifdef DEBUG
  debug_stack();
#endif
  pop(&st1);
  if (top != 0) {
    cout << "invalid RPN" << endl;
    exit(EXIT_FAILURE);
  }
#ifdef DEBUG
  cout << "-------" << endl;
  cout << "answer is " << st1.numerator / st1.denominator << endl;
#endif
  return st1.numerator / st1.denominator;
}

void solve_rpn(int num, int exp) {
  static int is_used[4] = {0};
  int i;

  if (num + exp == 7) {
    created_num[7] = '\0';
    cout << "RPN: " << created_num;
    int ans = calc_rpn(created_num);

    if (ans == numeric_limits<int>::max()) {
      cout << endl;
    } else if (ans == 10) {
      cout << " => ten!" << endl;
    } else {
      cout << " => NOT ten." << endl;
    }
  }
  
  if (num - exp >= 2) {
    created_num[num + exp] = '+';
    solve_rpn(num, exp + 1);
    created_num[num + exp] = '-';
    solve_rpn(num, exp + 1);
    created_num[num + exp] = '*';
    solve_rpn(num, exp + 1);
    created_num[num + exp] = '/';
    solve_rpn(num, exp + 1);
  }
  if (num <= 3) {
    for (i = 0; i < 4; i++) {
      if (is_used[i] == 0) {
        is_used[i] = 1;
        created_num[num + exp] = number[i];
        solve_rpn(num + 1, exp);
        is_used[i] = 0;
      }
    }
  }
}

int main(void) {
  cout << "input 4 dijits num: ";
  cin >> number;
  solve_rpn(0, 0);
  return EXIT_SUCCESS;
}
