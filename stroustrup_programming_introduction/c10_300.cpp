#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {
    cout << "Please enter name of output file: ";
    string oname;
    cin >> oname;
    ofstream ost(oname.c_str());

    if (!ost) cout << "can't open output file " <<  oname << endl;


    return 0;
}
