
#include <iostream>
#include <string>

using namespace std;

typedef struct {
    string english;
    string japanese;
} WORDSET;

typedef struct {
    WORDSET **data;
    unsigned int size;
} HASHTABLE;

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

unsigned int rehash(HASHTABLE *hashtable, unsigned int firsthash) {
    unsigned int hashval, k;

    for (k = 1; k <= hashtable->size / 2; k++) {
        hashval = (firsthash + k * k) % hashtable->size;
        if (hashtable->data[hashval] == NULL)
            return hashval;
    }
    return -1;
}

void add_data_to_map(HASHTABLE *hashtable, WORDSET *newdata) {
    unsigned int hashval;
    
    hashval = make_hash2(newdata->english, hashtable->size);

    if (hashtable->data[hashval] != NULL) {
        hashval = rehash(hashtable, hashval);

        if (hashval == -1) {
            cout << "no empty space for " << newdata->english << endl;
            return;
        }
    }
    hashtable->data[hashval] = newdata;
}

string get_data_from_map(HASHTABLE *hashtable, string key) {
    unsigned int hashval, k;
    WORDSET *word;

    hashval = make_hash2(key, hashtable->size);

    for (k = 0; k <= hashtable->size / 2; k++) {
        word = hashtable->data[(hashval + k * k) % hashtable->size];
        if (word != NULL) {
            if (key.compare(word->english) == 0)
                return word->japanese;
        }
    }
    return NULL;
}

WORDSET *delete_data_from_map(HASHTABLE *hashtable, string key) {
    unsigned int hashval, k;
    WORDSET *word;

    hashval = make_hash2(key, hashtable->size);
    
    for (k = 0; k <= hashtable->size / 2; k++) {
        word = hashtable->data[(hashval + k * k) % hashtable->size];
        if (word != NULL) {
            if (key.compare(word->english) == 0) {
                hashtable->data[(hashval + k * k) % hashtable->size] = NULL;
                return word;
            }
        }
    }
    return NULL;
}

void init_hashtable(HASHTABLE *hashtable, unsigned int size) {
    hashtable->data = (WORDSET**) malloc(sizeof(WORDSET*) * size);
    memset(hashtable->data, NULL, sizeof(WORDSET*) * size);
    hashtable->size = size;
}

void cleanup_hashtable(HASHTABLE *hashtable) {
    free(hashtable->data);
    hashtable->size = 0;
}

void print_all_data(HASHTABLE *hashtable) {
    unsigned int n;

    for (n = 0; n < hashtable->size; n++) {
        if (hashtable->data[n] != NULL)
            cout << n << ": " << hashtable->data[n]->english << "\t" << hashtable->data[n]->japanese;
    }
}

int main(void) {
    unsigned int n;
    string key, japanese;
    HASHTABLE hashtable;
    WORDSET *wordfound;
    WORDSET words[5] = {
        { "dolphin", "イルカ" }, { "dbeluga", "シロイルカ" },
        { "grampus", "シャチ" }, { "medusa", "くらげ" },
        { "otter", "カワウソ" }
    };

    init_hashtable(&hashtable, 503);

    for (n = 0; n < 5; n++) {
        add_data_to_map(&hashtable, &words[n]);
    }

    do {
        cout << " 1: search, 2: delete, 3: print, 0: exit" << endl;
        cin >> n;
        cout << "input english word: ";
        cin >> key;
        switch (n) {
        case 1:
            japanese = get_data_from_map(&hashtable, key);
            if (japanese == NULL) {
                cout << key << " is not found in map";
            } else {
                cout << key << " is " << japanese << endl;
            }
            break;
        case 2:
            wordfound = delete_data_from_map(&hashtable, key);
            if (wordfound == NULL) {
                cout << key << " is not found in map";
            } else {
                cout << key << " is removed" << endl;
            }
            break;
        case 3:
            print_all_data(&hashtable);
            break;
        }
    } while (n != 0);

    cleanup_hashtable(&hashtable);

    return 0;
}
