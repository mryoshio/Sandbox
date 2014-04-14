from avlnode import *
#from node import *

def print_node(node, n):
    if node:
        print_node(node.left, n+1)
        print '\t'*n, node.data
        print_node(node.right, n+1)

if __name__ == '__main__':
    root = None
    for x in [9, 23, 27, 32, 48, 49]:
        print "####### insert", x
        print_node(root, 0)
        print "-----"
        root = insert(root, x)
        print_node(root, 0)
#    print 'rotate right'
#    root = rotate_right(root)
#    print_node(root, 0)
#    print 'rotate right'
#    root = rotate_right(root)
#    print_node(root, 0)
#    print 'rotate left'
#    root = rotate_left(root)
#    print_node(root, 0)
#    print 'rotate left'
#    root = rotate_left(root)
#    print_node(root, 0)


