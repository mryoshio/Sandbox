#include <iostream>
#include <string>

using namespace std;

#define PATTERN_LENGTH 12

unsigned char original_text[] = "List<Event> events = EventService.get().search(query, category, sortOrder, Boolean.parseBoolean(beforeDeadlineOnly), maxNum);";
unsigned char original_pattern[] = "parseBoolean";

unsigned char *bm_search(unsigned char* text, unsigned char* pattern) {
    int table[256];
    int text_index, pattern_index, text_len, i;

    for (i = 0; i < 256; i++)
        table[i] = PATTERN_LENGTH;

    for (i = 0; i < PATTERN_LENGTH - 1; i++)
        table[pattern[i]] = PATTERN_LENGTH - i -1;

    for (text_len = 0; text[text_len] != '\0'; ++text_len)
        ;
     
    text_index = PATTERN_LENGTH - 1;

    while (text_index < text_len) {
        cout << endl;
        cout << original_text << endl;
        for (i = 0; i < text_index - PATTERN_LENGTH + 1; ++i) {
            cout << " ";
        }
        cout << pattern;

        pattern_index = PATTERN_LENGTH -1;
        while(text[text_index] == pattern[pattern_index]) {
            if (pattern_index == 0) {
                return text + text_index;
            }
            text_index--;
            pattern_index--;
        }
        if (table[text[text_index]] > PATTERN_LENGTH - pattern_index) {
            text_index += table[text[text_index]]; 
        } else {
            text_index += PATTERN_LENGTH - pattern_index;
        }
    }
    return NULL;
}

int main() {
    unsigned char *result;
    result = bm_search(original_text, original_pattern);
    if (result == NULL) {
        cout << endl << "NOT Found" << endl;
    } else {
        cout << " -> Found" << endl;
    }
    return 0;
}
