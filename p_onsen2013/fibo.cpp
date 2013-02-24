#include <sstream>
#include <iostream>

using namespace std;

#define MAX 100000000

unsigned long long table[MAX];

unsigned long long fibo(int n) {
    if (table[n])
        return table[n];
    table[n] = fibo(n-1) + fibo(n-2); 
    return table[n];
}

int main(int argc, char** argv) {

    for (int i = 0; i < MAX; i++)
        table[i] = 0;
    table[1] = 1;
    table[2] = 1;

    int n;
    istringstream istr(argv[1]);
    istr >> n;
    fibo(n);

    //    for (i = 1; table[i] != 0; i++)
    //        cout << table[i] << " ";
    //    cout << endl;

    cout << table[n] << endl;
    return 0;
}
