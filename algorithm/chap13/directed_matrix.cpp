#include <iostream>

#define STATION_NUMBER (6)

using namespace std;

char* STATIONS[] = { "Kamakura", "Fujisawa", "Yokohama", "Yokosuka", "Chigasaki", "Tokyo" };

int matrix[STATION_NUMBER][STATION_NUMBER] = {
  {0, 1, 0, 1, 0, 0},
  {0, 0, 1, 0, 1, 0},
  {1, 0, 0, 0, 0, 1},
  {1, 0, 0, 0, 0, 0},
  {0, 1, 0, 0, 0, 0},
  {0, 0, 1, 0, 0, 0}
};

int main(void) {
  int i, j;
  for (i = 0; i < STATION_NUMBER; i ++) {
    cout << STATIONS[i] << ": ";
    for (j = 0; j < STATION_NUMBER; j++) {
      if (matrix[i][j] == 1)
        cout << "->" << STATIONS[j] << " ";
    }
    cout << endl;
  }
  return 0;
}
