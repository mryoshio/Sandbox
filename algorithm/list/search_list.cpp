#include <iostream>

using namespace std;

typedef struct tagListNode {
    struct tagListNode *prev;
    struct tagListNode *next;
    int data;
} ListNode;

int main(void) {
    int buf, sum;
    ListNode *firstNode, *lastNode, *newNode, *thisNode, *removeNode;
    
    firstNode = lastNode = NULL;

    do {
        cout << "input new data (0 for end) : ";
        cin >> buf;
        if (buf) {
            newNode = (ListNode *)malloc(sizeof(ListNode));
            newNode->data = buf;
            newNode->next = NULL;

            if (lastNode != NULL) {
                lastNode->next = newNode;
                newNode->prev = lastNode;
                lastNode = newNode;
            } else {
                firstNode = lastNode = newNode;
                newNode->prev = NULL;
            }
        }
    } while (buf != 0);

    cout << "--- input numbers ---" << endl;
    for (thisNode = firstNode; thisNode != NULL; thisNode = thisNode->next) {
        cout << thisNode->data << " ";
        sum += thisNode->data;
    }
    cout << endl;
    do {
        cout << "input search number (0 for end) : ";
        cin >> buf;
        if (buf) {
            for (thisNode = firstNode; thisNode != NULL; thisNode = thisNode->next) {
                if (thisNode->data == buf) {
                    cout << buf << " is found." << endl;
                }
            }
        }
    } while (buf != 0);
    
    for (thisNode = firstNode; thisNode != NULL;) {
        removeNode = thisNode;
        thisNode = thisNode->next;
        free(removeNode);
    }
    return 0;
}
