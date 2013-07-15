#include <iostream>

#define MAX_STATION (10)

using namespace std;

typedef struct t_station {
  char name[256];
  struct t_station *transitions[MAX_STATION];
} STATION;

void init_station(STATION* station, char* name) {
  int i;
  for (i = 0; i < MAX_STATION; i++) {
    station->transitions[i] = NULL;
  }
  strncpy(station->name, name, sizeof(station->name) - 1);
  station->name[sizeof(station->name) - 1] = '\0';
}

void add_station(STATION* station, STATION* transition) {
  int i;
  for (i = 0; i < MAX_STATION; i++) {
    if (station->transitions[i] == NULL)
      break;
    if (station->transitions[i] == transition)
      return;
  }
  if (i == MAX_STATION)
    return;
  station->transitions[i] = transition;
}

void p_station(STATION* station) {
  int i;
  cout << station->name << ": ";
  for (i = 0; i < MAX_STATION; i++) {
    if (station->transitions[i] == NULL)
      break;
    cout << "->" << station->transitions[i]->name << ' ';
  }
  cout << endl;
}

int main(void) {
  int i;
  STATION stations[6];

  init_station(&stations[0], "Kamakura");
  init_station(&stations[1], "Fujisawa");
  init_station(&stations[2], "Yokohama");
  init_station(&stations[3], "Yokosuka");
  init_station(&stations[4], "Chigasaki");
  init_station(&stations[5], "Tokyo");

  add_station(&stations[0], &stations[3]);
  add_station(&stations[0], &stations[1]);
  add_station(&stations[0], &stations[2]);

  add_station(&stations[1], &stations[0]);
  add_station(&stations[1], &stations[4]);
  add_station(&stations[1], &stations[2]);

  add_station(&stations[2], &stations[1]);
  add_station(&stations[2], &stations[0]);
  add_station(&stations[2], &stations[5]);

  add_station(&stations[3], &stations[0]);
  add_station(&stations[4], &stations[1]);
  add_station(&stations[5], &stations[2]);

  for (i = 0; i < 6; i++)
    p_station(&stations[i]);

  return EXIT_SUCCESS;
}
