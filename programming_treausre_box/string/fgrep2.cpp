/*
  BM Algorithm
  O (m/n)
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
    int table[256];
    bool found;

    for (i = 0; i < 256; i++)
        table[i] = search.size();
    for (i = 0; i < search.size(); i++) {
        table[search[i]] = search.size()-i-1;
    }
    
    while (ifs && getline(ifs, line)) {
        i = search.size() - 1;
        found = false;
        while (i < line.size()) {
            j = search.size() - 1;
            while (line[i] == search[j]) {
                if (j == 0) {
                    cout << line << endl;
                    found = true;
                    break;
                } else {
                    i--;
                    j--;
                }
            }
            if (found) break;
            if (table[line[i]] > search.size() - j) {
                i += table[line[i]];
            } else {
                i += search.size() - j;
            }
        }
    }
    return 0;
}
