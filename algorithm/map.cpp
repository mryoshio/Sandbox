#include <iostream>
#include <map>

using namespace std;

int main() {
    map<string, int> score;
    score["math"] = 90;
    score["science"] = 89;
    score["social"] = 94;
    map<string, int>::iterator it = score.begin();
    while (it != score.end()) {
        cout << (*it).first << " => " << it->second << endl;
        it++;
    }
    return 0;
}
