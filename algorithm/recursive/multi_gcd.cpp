#include <iostream>

#define MAX 50
#define N 3

int array[N];

using namespace std;

int gcd(int n1, int n2) {
    int i;
    for (i = n1; i > 0; i--) {
        if (n1 % i == 0 && n2 % i == 0)
            return i;
    }
    return 1;
}

int multi_gcd(int n) {
    if (n == 1)
        return gcd(array[0], array[1]);

    return gcd(array[n], multi_gcd(n-1));
}

int main() {
    srand((unsigned int)time(NULL));
    int i;
    for (i = 0; i < N; i++) {
        array[i] = rand() % MAX + 1;
        cout << array[i] << " ";
    }
    cout << endl;

    cout << "multi gcd's result is " << multi_gcd(N-1) << endl;
}
