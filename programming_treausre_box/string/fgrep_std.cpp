
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main(int argc, char** argv) {
    ifstream ifs(argv[2]);
    string buf;
    while (ifs && getline(ifs, buf)) {
        if (buf.find(argv[1], 0) != string::npos) {
            cout << buf << endl;
        }
    }
    return 0;
}


