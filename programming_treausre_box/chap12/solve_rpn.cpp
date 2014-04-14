#include <iostream>

#define STACK_SIZE 10

using namespace std;

typedef struct t_fraction {
  int numerator;
  int denominator;
} FRACTION;

FRACTION stack[STACK_SIZE];
int top = 0;

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

int main(void) {
  char line[256];
  int c;
  FRACTION st1, st2;

  cout << "input number in RPN: ";
  cin.getline(line, sizeof(line));
  
  c = 0;
  while (c < sizeof(line) && line[c] != '\0') {
    if (line[c] >= '0'&& line[c] <= '9') {
      st1.numerator = line[c] - '0';
      st1.denominator = 1;
      push(&st1);
    } else if (line[c] == ' ') {
      // do nothing if space
    } else {
      pop(&st1);
      pop(&st2);
      debug_stack();
      cout << line[c] << endl;;
      if (line[c] == '+') {
        st2.numerator = st2.numerator * st1.denominator + st1.numerator * st2.denominator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (line[c] == '-') {
        st2.numerator = st2.numerator * st1.denominator - st1.numerator * st2.denominator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (line[c] == '*') {
        st2.numerator = st2.numerator * st1.numerator;
        st2.denominator = st1.denominator * st2.denominator;
        push(&st2);
      } else if (line[c] == '/') {
        st2.numerator = st2.numerator * st1.denominator;
        st2.denominator = st2.denominator * st1.numerator;
        if (st2.denominator == 0) {
          cout << "0 devision error" << endl;
          exit(EXIT_FAILURE);
        }
        push(&st2);
      } else {
        cout << "Invalid character error!" << endl;
        exit(EXIT_FAILURE);
      }
    }
    c++;
  }
  debug_stack();
  pop(&st1);
  if (top != 0) {
    cout << "invalid RPN" << endl;
    exit(EXIT_FAILURE);
  }
  cout << "-------" << endl;
  cout << "answer is " << st1.numerator / st1.denominator << endl;
  return EXIT_SUCCESS;
}
