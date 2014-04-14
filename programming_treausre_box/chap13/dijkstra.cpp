#include <iostream>

#define STATION_NUMBER (6)
#define START_STATION (0)

using namespace std;

string stations[] = { "Yokohama", "Musashikosugi", "Shinagawa", "Shibuya", "Shimbashi", "Tameikesannno" };

int current_cost[STATION_NUMBER] = { -1, -1, -1, -1, -1, -1 };
int fix[STATION_NUMBER] = { 0 };

int matrix[STATION_NUMBER][STATION_NUMBER] = {
  {0, 12, 28, 0, 0, 0},
  {12, 0, 10, 13, 0, 0},
  {28, 10, 0, 11, 7, 0},
  {0, 13, 11, 0, 0, 9},
  {0, 0, 7, 0, 0, 4},
  {0, 0, 0, 9, 4, 0}
};

int main(void) {
  int i, min_station, min_time, new_time;

  current_cost[0] = 0;

  while (true) {
    min_time = -1;
    
    for (i = 0; i < STATION_NUMBER; i++) {
      if (fix[i] == 0 && current_cost[i] != -1) {
        if (min_time == -1 || min_time > current_cost[i]) {
          min_time = current_cost[i];
          min_station = i;
        }
      }
    }

    if (min_time == -1)
      break;

    for (i = 0; i < STATION_NUMBER; i++) {
      if (fix[i] == 0 && matrix[min_station][i] > 0) {
        new_time = min_time + matrix[min_station][i];
    
        if (current_cost[i] == -1 || current_cost[i] > new_time) {
          current_cost[i] = new_time;
        }
      }
    }

    fix[min_station] = 1;
  }

  for (i = 0; i < STATION_NUMBER; i++) {
    cout << stations[START_STATION] << " -> " << stations[i];
    cout << ": " << current_cost[i] << endl;
  }

  return 0;
}
