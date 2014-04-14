#include <iostream>

using namespace std;

#define N 5

int size[N] = { 2, 3, 5, 6, 9 };
int value[N] = { 2, 4, 7, 10, 14 };

#define BAG_SIZE 16

int main(void) {
  int bag_value[BAG_SIZE + 1] = { 0 };
  int i, j, new_value;

  cout << "bag size:\t\t";
  for (i = 1; i < BAG_SIZE + 1; i++)
    cout << i << '\t';

  cout << endl << endl;

  for (i = 0; i < N; i++) {
    for (j = size[i]; j < BAG_SIZE + 1; j++) {
      cout << j-size[i] << endl;
      new_value = bag_value[j - size[i]] + value[i];

      if (new_value > bag_value[j])
        bag_value[j] = new_value;
    }
    cout << "use items to no." << i + 1 << "\t";
    for (j = 1; j < BAG_SIZE + 1; j++)
      cout << bag_value[j] << '\t';
    cout << endl;
  }
  return EXIT_SUCCESS;  
}
