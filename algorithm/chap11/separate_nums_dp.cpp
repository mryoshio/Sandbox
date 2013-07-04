#include <iostream>

#define N 10
#define SEPARATOR 3

const int array[N] = { 15, 3, 7, 6, 10, 4, 13, 2, 3, 6 };

typedef struct {
  int sol;
  int num;
} cell;

using namespace std;

int main(void) {
  cell solutions[N][SEPARATOR + 1];
  int i, j, s,sum;

  for (i = N - 1; i >= 0; i--) {
    for (j = 0; j < SEPARATOR + 1; j++) {
      solutions[i][j].num = 0;
      for (sum = 0, s = i; s < N; s++) {
        sum += array[s];
        if (j == 0 || i == N -1 || solutions[i][j].num == 0 || (s != N -1 && solutions[i][j].sol > max(sum, solutions[s + 1][j - 1].sol))) {
          if (j == 0 || i == N - 1) {
            solutions[i][j].sol = sum;
          } else {
            solutions[i][j].sol = max(sum, solutions[s + 1][j - 1].sol);
          }
          solutions[i][j].num = s - i + 1;
        }
      }
    }
  }
  for (j = 0; j < SEPARATOR + 1; j++) {
    for (i = 0; i < N; i++)
      cout << solutions[i][j].num << ',' << solutions[i][j].sol << '\t';
    cout << endl;
  }
  cout << endl;
  cout << "maximum sum: " << solutions[0][SEPARATOR].sol;
  cout << endl;
  for (i = 0, j = SEPARATOR; j >= 0 && i != N; j--) {
    cout << '[' << solutions[i][j].num << "] ";
    i += solutions[i][j].num;
  }
  cout << endl;
  return true;
}
