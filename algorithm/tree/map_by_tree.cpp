#include <iostream>

#define N 10

using namespace std;

typedef struct tag_tree_node {
    char* key;
    char* val;
    struct tag_tree_node *left;
    struct tag_tree_node *right;
} tree_node;

tree_node *root_node = NULL;

tree_node* create_node(char* key, char* val) {
    tree_node *new_node = (tree_node*)malloc(sizeof(tree_node));
    if (new_node == NULL) {
        exit(EXIT_FAILURE);
    }
    new_node->left = NULL;
    new_node->right = NULL;
    new_node->key = (char*)malloc(sizeof(char) * strlen(key) + 1);
    new_node->val = (char*)malloc(sizeof(char) * strlen(val) + 1);
    if (new_node->key == NULL || new_node->val == NULL) {
        exit(EXIT_FAILURE);
    }
    strcpy(new_node->key, key);
    strcpy(new_node->val, val);
    return new_node;
}

void insert_node(char* key, char* val, tree_node *node) {
    if (node == NULL){
        root_node = create_node(key, val);
        return;
    }
    if (strcmp(node->key, key) > 0) {
        if (node->left == NULL)
            node->left = create_node(key, val);
        else
            insert_node(key, val, node->left);
    } else {
        if (node->right == NULL)
            node->right = create_node(key, val);
        else
            insert_node(key, val, node->right);
    }
    return;
}

tree_node* find_node(char* val, tree_node *node) {

    int cmp = strcmp(node->key, val);

    if (cmp > 0) {
        if (node->left == NULL)
            return NULL;
        return find_node(val, node->left);
    }
    if (cmp < 0) {
        if (node->right == NULL)
            return NULL;
        return find_node(val, node->right);
    }
    return node;
}

int delete_node(char* val) {
    tree_node *node = root_node;
    tree_node *parent = NULL;
    tree_node *left_biggest;
    int dir = 0, cmp;

    while (node != NULL && (cmp = strcmp(node->val, val)) != 0) {
        if (cmp > 0) {
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
        free(node->key);
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
        free(node->key);
        node->key = left_biggest->key;
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

    free(node->key);
    free(node->val);
    free(node);
}

void print_tree(int depth, tree_node *node, int dir) {
    int i;
    if (node == NULL)
        return;

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
    cout << node->key << " -> " << node->val << endl;
    if (node->left != NULL)
        print_tree(depth + 1, node->left, -1);
    if (node->right != NULL)
        print_tree(depth + 1, node->right, 1);
}

int main() {
    int i;
    char tmp[256], tmpval[256];
    tree_node *node_found;

    while (true) {
        print_tree(0, root_node, 0);
        cout << "0:finish, 1:insert, 2:search, 3:delete > ";
        cin >> i;
        if (i ==0)
            break;
        switch (i) {
        case 1:
            cout << "key: ";
            cin >> tmp;
            cout << "value: ";
            cin >> tmpval;
            insert_node(tmp, tmpval, root_node);
            break;
        case 2:
            cout << "key: ";
            cin >> tmp;
            node_found = find_node(tmp, root_node);
            if (node_found == NULL) {
                cout << "Node(" << tmp << ") NOT found.";
            } else {
                cout << "Node(" << tmp << ") found, val is " << node_found -> val;
            }
            break;
        case 3:
            cout << "valval to delete";
            cin >> tmpval;
            if (delete_node(tmpval) == 1) {
                cout << tmpval << " deleted.";
            } else {
                cout << tmpval << " NOT found";
            }
            break;
        }
    }
    free_node(root_node);
    return EXIT_SUCCESS;
}
