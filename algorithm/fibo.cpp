#include <sstream>
#include <iostream>

using namespace std;

int table[256];

int fibo(int n) {
    if (table[n])
        return table[n];
    table[n] = fibo(n-1) + fibo(n-2); 
    return table[n];
}

int main(int argc, char** argv) {

    int i, size;
    istringstream istr(argv[1]);

    size = sizeof(table)/sizeof(table[0]);
    for (i = 0; i < size; i++)
        table[i] = 0;
    table[1] = 1;
    table[2] = 1;

    int max;
    istr >> max;
    fibo(max);

    for (i = 1; table[i] != 0; i++)
        cout << table[i] << " ";
    cout << endl;
}
