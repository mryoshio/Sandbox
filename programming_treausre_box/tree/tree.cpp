#include <iostream>

#define N 10

using namespace std;


typedef struct tag_tree_node {
    int data;
    struct tag_tree_node *left;
    struct tag_tree_node *right;
} tree_node;


tree_node *root_node = NULL;


tree_node* create_node(int data) {
    tree_node *new_node = (tree_node*)malloc(sizeof(tree_node));
    if (new_node == NULL) {
        exit(EXIT_FAILURE);
    }
    new_node->left = NULL;
    new_node->right = NULL;
    new_node->data = data;
    return new_node;
}

void insert_node(int data, tree_node *node) {
    if (node == NULL){
        root_node = create_node(data);
        return;
    }
    if (node->data > data){
        if (node->left == NULL)
            node->left = create_node(data);
        else
            insert_node(data, node->left);
    } else {
        if (node->right == NULL)
            node->right = create_node(data);
        else
            insert_node(data, node->right);
    }
    return;
}

tree_node* find_node(int data, tree_node *node) {
    if (node->data > data) {
        if (node->left == NULL)
            return NULL;
        return find_node(data, node->left);
    }
    if (node->data < data) {
        if (node->right == NULL)
            return NULL;
        return find_node(data, node->right);
    }
    return node;
}

int delete_node(int data) {
    tree_node *node = root_node;
    tree_node *parent = NULL;
    tree_node *left_biggest;
    int dir = 0;

    while (node != NULL && node->data != data) {
        if (node->data > data) {
            parent = node;
            node = node->left;
            dir = -1;
        } else {
            parent = node;
            node = node->right;
            dir = 1;
        }
    }
    if (node == NULL)
        return 0;
    
    if (node->left == NULL || node->right == NULL) {
        if (node->left == NULL) {
            switch (dir) {
            case -1:
                parent->left = node->right;
                break;
            case 1:
                parent->right = node->right;
                break;
            case 0:
                root_node = node->right;
            }
        } else {
            switch (dir) {
            case -1:
                parent->left = node->left;
                break;
            case 1:
                parent->right = node->right;
                break;
            case 0:
                root_node = node->left;
            }
        }
        free(node);
    } else {
        left_biggest = node->left;
        parent = node;
        dir = -1;
        while (left_biggest->right != NULL) {
            parent = left_biggest;
            left_biggest = left_biggest->right;
            dir = 1;
        }
        node->data = left_biggest->data;
        if (dir == -1)
            parent->left = left_biggest->left;
        else
            parent->right = left_biggest->left;
        free(left_biggest);
    }
    return 1;
}

void free_node(tree_node *node) {
    if (node == NULL)
        return;
    free_node(node->left);
    free_node(node->right);
    free(node);
}

void print_tree(int depth, tree_node *node, int dir) {
    int i;
    for (i = 0; i < depth; i++)
        cout << "  ";
    switch (dir) {
    case -1:
        cout << "L: ";
        break;
    case 1:
        cout << "R: ";
        break;
    }
    cout << node->data << endl;
    if (node->left != NULL)
        print_tree(depth + 1, node->left, -1);
    if (node->right != NULL)
        print_tree(depth + 1, node->right, 1);
}

int main() {
    srand((unsigned int)time(NULL));
    int i, ar[N];
    for (i = 0; i < N; i++) {
        ar[i] = rand() % 100 + 1;
        insert_node(ar[i], root_node);
    }
    // original
    print_tree(0, root_node, 0);

    // insert
    int insert = rand() % 100 + 1;
    cout << "---------- insert: " << insert << endl;
    insert_node(insert, root_node);
    print_tree(0, root_node, 0);

    // delete
    int del = ar[rand() % N];
    cout << "---------- delete: " << del << endl;
    delete_node(del);
    print_tree(0, root_node, 0);

    return EXIT_SUCCESS;
}
