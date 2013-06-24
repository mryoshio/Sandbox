#include <iostream>

using namespace std;

typedef struct t_pattern {
  unsigned long hash;
  int pattern_from;
} PATTERN;

PATTERN* history;

int history_count = 0;
int queue_bottom;

unsigned long make_hash(char* pattern) {
  unsigned long hash = 0;

  for (int i = 0; i < 8; i++)
    hash |= ((unsigned long)pattern[7 - i]) << (i * 4);
  return hash;
}

void pattern_from_hash(char* pattern, unsigned long hash) {
  for (int i = 0; i < 8; i++)
    pattern[7 - i] = (char)((hash >> (i * 4)) & 0xf);
}

void save_history(char* pattern, int pattern_from) {
  unsigned long hash = make_hash(pattern);

  for (int i = 0; i < history_count; i++)
    if (history[i].hash == hash)
      return;

  history_count++;
  history = (PATTERN*)realloc(history, sizeof(PATTERN) * history_count);
  
  if (history == NULL) {
    cout << "Out of Memory" << endl;
    exit(EXIT_FAILURE);
  }

  history[history_count - 1].hash = hash;
  history[history_count - 1].pattern_from = pattern_from;
}

int solve(void) {
  int blank;
  unsigned long hash;
  char pattern[8];
  queue_bottom = 0;

  while (queue_bottom != history_count) {
    hash = history[queue_bottom].hash;

    if (hash == 0x12345670)
      return 1;

    pattern_from_hash(pattern, hash);
    for (blank = 0; blank < 8; blank++) {
      if (pattern[blank] == 0)
          break;
    }
    
    if (blank > 3) {
      // swap blank tile with upper one
      swap(pattern[blank], pattern[blank - 4]);
      // save new panel positions
      save_history(pattern, queue_bottom); 
      // revert to original positions for subsequent code
      pattern_from_hash(pattern, hash);
    }
    if (blank < 4) {
      // swap blank tile with bottom one
      swap(pattern[blank], pattern[blank + 4]);
      save_history(pattern, queue_bottom);
      pattern_from_hash(pattern, hash);
    }
    if (blank != 0 && blank != 4) {
      // swap blank tile with right one
      swap(pattern[blank], pattern[blank - 1]);
      save_history(pattern, queue_bottom);
            pattern_from_hash(pattern, hash);
    }
    if (blank != 3 && blank != 7) {
      // swap blank tile with left one
      swap(pattern[blank], pattern[blank + 1]);
      save_history(pattern, queue_bottom);
      pattern_from_hash(pattern, hash);
    }
    queue_bottom++;
  }
  return 0;
}

int main(void) {
  int last, i;
  char pattern[8] = { 2, 7, 1, 4, 5, 0, 3, 6 };

  history = NULL;
  save_history(pattern, -1);
  
  if (! solve()) {
    cout << "answer is not found even if all pattern tested." << endl;
    return EXIT_FAILURE;
  }

  last = -1;
  while (last != queue_bottom) {
    for (i = queue_bottom; history[i].pattern_from != last;)
      i = history[i].pattern_from;
    last = i;

    pattern_from_hash(pattern, history[last].hash);
    for (i = 0; i < 8; i++) {
      cout << (pattern[i] ? (char)(pattern[i] + '0') : ' ');
      if (i % 4 == 3)
        cout << endl;
    }
    getchar();
  }
  free(history);
  return EXIT_SUCCESS;    
}
