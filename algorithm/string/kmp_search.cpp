#include <iostream>
#include <string>

using namespace std;

#define PATTERN_LENGTH 13

unsigned char original_text[] = "a eighty-eighty-eighth key";
unsigned char original_pattern[] = "eighty-eighth";

#define IS_DEBUG
#define ARRAY_LENGTH(array) (sizeof(array) / sizeof(array[0]))

unsigned char *kmp_search(unsigned char* text, unsigned char* pattern) {
    int table[PATTERN_LENGTH + 1] = {0, 0};
    int text_index = 1, pattern_index = 0;
    int i = 0, j;

    while ((pattern[text_index]) != '\0') {
        if (pattern[text_index] == pattern[pattern_index]) {
            table[++text_index] = ++pattern_index;
        } else if (pattern_index == 0) {
            table[++text_index] = 0;
        } else {
            pattern_index = table[pattern_index];
        }
    }

#ifdef IS_DEBUG
    for (j = 0; j < ARRAY_LENGTH(table); j++) {
        cout << table[j];
    }
    cout << endl;
#endif

    while ((*text) != '\0') {
        cout << endl;
        cout << original_text << endl;
        for (j = 0; j < text - original_text; ++j) {
            cout << " ";
        }
        cout << pattern[i];

        if ((*text) == pattern[i]) {
            text++;
            if (pattern[++i] == '\0')
                return text - PATTERN_LENGTH;
        } else if (i == 0) {
            text++;
        } else {
            i = table[i];
        }
    }
    return NULL;
}


int main() {
    unsigned char *result;
    result = kmp_search(original_text, original_pattern);
    if (result == NULL) {
        cout << endl << "NOT Found" << endl;
    } else {
        cout << " -> Found" << endl;
    }
    return 0;
}
