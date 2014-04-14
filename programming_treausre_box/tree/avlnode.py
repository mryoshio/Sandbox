# -*- coding:utf-8 -*-
#
# avlnode.py : AVL tree 操作関数
#
# Copyright (C) 2007 Makoto Hiroi
#

# 節の定義
class Node:
    def __init__(self, x):
        self.data = x
        self.left = None
        self.right = None
        self.balance = 0    # 平衡度

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

#
# データの探索
#
def search(node, x):
    while node is not None:
        if node.data == x: return True
        if x < node.data:
            node = node.left
        else:
            node = node.right
    return False

#
# 平衡度の更新 (２重回転だけ)
#
def update_balance(node):
    if node.balance == 1:
        node.right.balance = -1
        node.left.balance = 0
    elif node.balance == -1:
        node.right.balance = 0
        node.left.balance = 1
    else:
        node.right.balance = 0
        node.left.balance = 0
    node.balance = 0


#
# データの挿入
#

# 挿入または削除が行われた部分木の種別
LEFT  = 0
RIGHT = 1

# バランスが崩れていたら修正する
def balance(root, path):
    new_node = None
    while len(path) > 0:
        pnode, dir = path.pop()   # pnode 節, dir 部分木の種別
        if dir == LEFT:
            pnode.balance += 1
        else:
            pnode.balance -= 1
        b = pnode.balance
        if b == 0: return root    # 修正不要 root を返す
        if b > 1:
            if pnode.left.balance < 0:
                # LR ２重回転
                print "Left -> Right (2)"
                pnode.left = rotate_left(pnode.left)
                new_node = rotate_right(pnode)
                update_balance(new_node)
            else:
                # LL １重回転
                print "Right (1)"
                new_node = rotate_right(pnode)
                new_node.balance = 0
                pnode.balance = 0
            break
        elif b < -1:
            if pnode.right.balance > 0:
                # RL ２重回転
                print "Right -> Left (2)"
                pnode.right = rotate_right(pnode.right)
                new_node = rotate_left(pnode)
                update_balance(new_node)
            else:
                # RR １重回転
                print "Left (1)"
                new_node = rotate_left(pnode)
                new_node.balance = 0
                pnode.balance = 0
            break
    # 子の付け替え
    if len(path) > 0:
        # pnode の親節を求める
        gnode, gdir = path.pop()
        if gdir == LEFT:
            gnode.left = new_node
        else:
            gnode.right = new_node
    elif new_node is not None:
        return new_node
    return root

# 挿入
def insert(root, x):
    if root is None: return Node(x)
    path = []
    node = root
    while True:
        if node.data == x: return root
        elif x < node.data:
            path.append((node, LEFT))
            if node.left is None:
                node.left = Node(x)
                break
            node = node.left
        else:
            path.append((node, RIGHT))
            if node.right is None:
                node.right = Node(x)
                break
            node = node.right
    return balance(root, path)

#
# データの削除
#

# バランスが崩れていたら修正する
def balance_delete(root, path):
    while len(path) > 0:
        new_node = None
        pnode, dir = path.pop()  # pnode = 節, dir = 削除した部分木
        if dir == LEFT:
            pnode.balance -= 1   # 挿入と逆で left が -1, right が +1
        else:
            pnode.balance += 1
        b = pnode.balance
        if b > 1:
            if pnode.left.balance < 0:
                # ２重回転
                pnode.left = rotate_left(pnode.left)
                new_node = rotate_right(pnode)
                update_balance(new_node)
            else:
                # １重回転
                new_node = rotate_right(pnode)
                if new_node.balance == 0:
                    new_node.balance = -1
                    pnode.balance = 1
                else:
                    new_node.balance = 0
                    pnode.balance = 0
        elif b < -1:
            if pnode.right.balance > 0:
                # ２重回転
                pnode.right = rotate_right(pnode.right)
                new_node = rotate_left(pnode)
                update_balance(new_node)
            else:
                # １重回転
                new_node = rotate_left(pnode)
                if new_node.balance == 0:
                    new_node.balance = 1
                    pnode.balance = -1
                else:
                    new_node.balance = 0
                    pnode.balance = 0
        elif b != 0:
            break      # b == 1 or b == -1 は修正終了
        # 子の付け替え
        if new_node is not None:
            if len(path) == 0: return new_node   # root になる
            gnode, gdir = path[len(path) - 1]    # pnode の親
            if gdir == LEFT:
                gnode.left = new_node
            else:
                gnode.right = new_node
            if new_node.balance != 0: break      # 修正終了
    return root

# データを探す
def _search(node, x, path):
    while node is not None:
        if node.data == x: return node
        if x < node.data:
            path.append((node, LEFT))
            node = node.left
        else:
            path.append((node, RIGHT))
            node = node.right
    return None

# 最小値を探す
def _search_min(node, path):
    while node.left is not None:
        path.append((node, LEFT))
        node = node.left
    return node

# 削除
def delete(root, x):
    if root is None: return None    # 空の木
    path = []                       # 経路
    node = _search(root, x, path)   # 探索
    if node is None: return root    # 削除データなし
    if node.left is not None and node.right is not None:
        # 子が二つある場合
        # 右部分木の最小値を探して置き換える
        path.append((node, RIGHT))
        min_node = _search_min(node.right, path)
        node.data = min_node.data
        node = min_node
    if len(path) > 0:
        pnode, dir = path[len(path) - 1]
    else:
        pnode = None
    # 節を削除する
    if node.left is None:
        cnode = node.right
    else:
        cnode = node.left
    if pnode is None:
        return cnode                 # root の削除
    elif dir == LEFT:
        pnode.left = cnode
    else:
        pnode.right = cnode
    return balance_delete(root, path)


# 巡回
def traverse(node):
    if node is not None:
        for x in traverse(node.left):
            yield x
        yield node.data
        for x in traverse(node.right):
            yield x
