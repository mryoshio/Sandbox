# -*- coding:utf-8 -*-
# node.py : 二分木の操作関数 (非再帰版)
#
#           Copyright (C) 2007 Makoto Hiroi


class Node:
    def __init__(self, x):
        self.data  = x
        self.left  = None
        self.right = None

# 右回転
def rotate_right(node):
    lnode = node.left
    node.left = lnode.right
    lnode.right = node
    return lnode

# 左回転
def rotate_left(node):
    rnode = node.right
    node.right = rnode.left
    rnode.left = node
    return rnode

# データの探索
def search(node, x):
    while node is not None:
        if node.data == x: return True
        if x < node.data:
            node = node.left
        else:
            node = node.right
    return False

# データの挿入
def insert(node, x):
    if node is None: return Node(x)
    p = node
    while True:
        if p.data == x: return node
        elif x < p.data:
            if p.left is None:
                p.left = Node(x)
                break
            p = p.left
        else:
            if p.right is None:
                p.right = Node(x)
                break
            p = p.right
    return node

#
# データの削除
#

# データを探す
def _search(node, x):
    pnode = None
    while node is not None:
        if node.data == x: return node, pnode
        pnode = node
        if x < node.data:
            node = node.left
        else:
            node = node.right
    return None, None

# 最小値を探す
def _search_min(node):
    pnode = None
    while node.left is not None:
        pnode = node
        node = node.left
    return node, pnode

# 削除
def delete(root, x):
    if root is None: return None    # 空の木
    node, pnode = _search(root, x)  # 探索
    if node is None: return root    # 削除データなし
    if node.left is not None and node.right is not None:
        # 子が二つある場合
        # 右部分木の最小値を探して置き換える
        min_node, min_pnode = _search_min(node.right)
        node.data = min_node.data
        if min_pnode is not None:
            pnode = min_pnode
            node = min_node
        else:
            pnode = node
            node = min_node
    # 節を削除する
    if node.left is None:
        cnode = node.right
    else:
        cnode = node.left
    if pnode is None:
        return cnode            # root の削除
    elif pnode.left == node:
        pnode.left = cnode
    else:
        pnode.right = cnode
    return root

# 巡回
def traverse(node):
    if node is not None:
        for x in traverse(node.left):
            yield x
        yield node.data
        for x in traverse(node.right):
            yield x
