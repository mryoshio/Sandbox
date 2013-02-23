/*
  Simple Algorithm 
  O (mn)
 */
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main(int argc, char** argv) {

    if (argc < 3) {
        cout << "Usage: fgrep <search> <file>" << endl;
        exit(1);
    }

    string search = argv[1];
    ifstream ifs(argv[2]);
    string line;
    int i, j;

    while (ifs && getline(ifs, line)) {
        for (i = 0; i < line.size(); i++) {
            for (j = 0; j < search.size(); j++) {
                if (line[i+j] != search[j])
                    break;
            }
            if (j == search.size()) {
                cout << line << endl;
            }
        }
    }
    return 0;
}
