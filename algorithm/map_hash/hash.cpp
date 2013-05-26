#include <iostream>
#include <string>

using namespace std;

unsigned int make_hash1(string str, unsigned int hash_size) {
    unsigned int n, hash;

    for (n = 0, hash = 0; n < str.size(); n++) {
        hash += (int)str[n];
    }
    return hash % hash_size;
}

unsigned int make_hash2(string str, unsigned int hash_size) {
    unsigned int n, hash, weight;

    for (n = weight = hash = 0; n < str.size(); n++, weight++) {
        if (weight > 7) {
            weight = 0;
        }
        hash += (int)str[n] << (4*weight);
    }
    return hash % hash_size;
}

int main(int argc, char** argv) {
    int hash_size = 117;

    cout << make_hash1("lump", hash_size) << endl;
    cout << make_hash1("plum", hash_size) << endl;

    cout << make_hash2("lump", hash_size) << endl;
    cout << make_hash2("plum", hash_size) << endl;
}
