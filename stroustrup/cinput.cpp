#include <iostream>

using namespace std;


void skip_to_int() {
  if (cin.fail()) {
    cin.clear();
    char ch;
    while (cin >> ch) {
      if (isdigit(ch) || ch == '-') {
        cin.unget();
        return;
      }
    }
  }
  cout << "no input" << endl;
}

int get_int() {
  int n = 0;
  while (true) {
    if (cin >> n) return n;
    cout << "Sorry, it was not a number. Try again" << endl;
    skip_to_int();
  }
}

int get_int(int low, int high) {
  cout << "Enter an integer in the range "
       << low << " to " << high << endl;
  while (true) {
    int n = get_int();
    if (low <= n && n <= high) return n;
    cout << "Sorry "
         << n << " is not in the [" << low << ':' << high
         << "] range. Try again" << endl;
  }
}

int main() {
  cout << "enter an integer in the range 1 to 10: ";
  int n = 0;
  while (true) {
    if (cin >> n) {
      if (1 <= n && n <= 10) break;
      cout << "Sorry " << n << " is not in [1:10]. Try again" << endl;
    } else {
      cout << "Sorry, it was not a number. Try again" << endl;
      skip_to_int();
    }
  }
}
