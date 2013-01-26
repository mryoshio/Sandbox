
class Item:
    def __init__(self, w, v):
        self.weight = w
        self.value = v

def knapsack(items, W):
    dp = [[0 for i in range(W+1)] for j in range(len(items)+1)]
    w = 0
    while w <= W:
        dp[0][w] = 0
        w+=1
    k = 1
    while k <= len(items):
        item = items[k-1]
        w = 0
        while w<= W:
            dp[k][w] = dp[k-1][w]

            if w-1 >= 0:
                dp[k][w] = max(dp[k][w], dp[k][w-1])
            if w-item.weight >= 0:
                dp[k][w] = max(dp[k][w], dp[k-1][w-item.weight]+item.value)
            w+=1
        k+=1
    return dp[len(items)][W]
    
items = []
items.append(Item(5, 20))
items.append(Item(3, 11))
items.append(Item(3, 11))
items.append(Item(1, 1))
print knapsack(items, 6)
