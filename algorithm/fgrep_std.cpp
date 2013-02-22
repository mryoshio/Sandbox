
#include <iostream>
#include <string>
#include <fstream>
#include <vector>

using namespace std;

int main(int argc, char** argv) {
    ifstream ifs(argv[1]);
    string buf;
    while (ifs && getline(ifs, buf)) {
        if (buf.find(argv[2], 0) != string::npos) {
            cout << buf << endl;
        }
    }
    return 0;
}


