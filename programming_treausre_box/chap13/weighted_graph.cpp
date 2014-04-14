#include <iostream>

#define STATION_NUMBER (6)

using namespace std;

char* STATIONS[] = { "Yokohama", "Musashikosugi", "Shinagawa", "Shibuya", "Shimbashi", "Tameikesannou" };

int matrix[STATION_NUMBER][STATION_NUMBER] = {
  {0, 12, 28, 0, 0, 0},
  {12, 0, 10, 13, 0, 0},
  {28, 10, 0, 11, 7, 0},
  {0, 13, 11, 0, 0, 9},
  {0, 0, 7, 0, 0, 4},
  {0, 0, 0, 9, 4, 0}
};

int main(void) {
  int i, j;
  for (i = 0; i < STATION_NUMBER; i ++) {
    cout << STATIONS[i] << ": ";
    for (j = 0; j < STATION_NUMBER; j++) {
      if (matrix[i][j] > 0) {
        cout << "->" << STATIONS[j];
        cout << '(' << matrix[i][j] << ") ";
      }
    }
    cout << endl;
  }
  return 0;
}
