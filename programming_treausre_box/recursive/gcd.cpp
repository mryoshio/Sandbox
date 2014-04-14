#include <iostream>

#define MAX 100

using namespace std;

int gcd(int n1, int n2) {
    int i;
    for (i = n1; i > 0; i--) {
        if (n1 % i == 0 && n2 % i == 0)
            return i;
    }
    return 1;
}

int main(int argc, char** argv) {
    srand((unsigned int)time(NULL));
    int num1 = rand() % MAX + 1;
    int num2 = rand() % MAX + 1;
    cout << "gcd(" << num1 << ", " << num2 << ") => " << gcd(num1, num2) << endl;
}
