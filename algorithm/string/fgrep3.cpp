/*
  BM Algorithm, separate line loop in new function.
  O (m/n)
 */
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

void search_line(string line, string search, int *table) {

    int i = search.size() - 1;
    int j;

    while (i < line.size()) {
        j = search.size() - 1;
        while (line[i] == search[j]) {
            if (j == 0) {
                cout << line << endl;
                return;
            } else {
                i--;
                j--;
            }
        }
        if (table[line[i]] > search.size() - j) {
            i += table[line[i]];
        } else {
            i += search.size() - j;
        }
    }
}

int main(int argc, char** argv) {

    if (argc < 3) {
        cout << "Usage: fgrep <search> <file>" << endl;
        exit(1);
    }

    string search = argv[1];
    ifstream ifs(argv[2]);
    string line;
    int table[256];

    for (int i = 0; i < 256; i++)
        table[i] = search.size();
    for (int i = 0; i < search.size(); i++) {
        table[search[i]] = search.size()-i-1;
    }
    
    while (ifs && getline(ifs, line)) {
        search_line(line, search, table);
    }
    return 0;
}

