#include <iostream>

using namespace std;

unsigned long power[10];
int number_using[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int numOfDigit(unsigned long number, unsigned long digit) {
    int r = 0;
    if (number == 0)
        return 0;
    if (number % 10 == digit)
        r = 1;
    r += numOfDigit(number / 10, digit);
    return r;    
}

void checkNum() {
    int i;
    unsigned long r = 0;
    for (i = 1; i < 10; i++) 
        r += power[i] * number_using[i];
    for (i = 1; i < 10; i++) {
        if (numOfDigit(r, i) != number_using[i])
            return;
    }
    cout << r << endl;
    return;    
}

void makeNums(int begin, int n) {
    int i;
    if (n > 10)
        return;
    for (i = begin; i < 10; i++) {
        number_using[i]++;
        checkNum();
        makeNums(i, n + 1);
        number_using[i]--;
    }
}

int main() {
    unsigned long i, j, k;
    for (i = 1; i < 10; i++) {
        k = 1;
        for (j = 0; j < i; j++)
            k *= i;
        power[i] = k;
    }
    makeNums(1, 1);
    return EXIT_SUCCESS;
}
