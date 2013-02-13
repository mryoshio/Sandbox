require 'pp'

MAX_N = 6 ; N = 4 ; W = 5
$w = [2, 1, 3, 2] ; $v = [3, 2, 4, 2]

$dp = Array.new(MAX_N) { Array.new(MAX_N, -1) }

def rec(i, j)
  return $dp[i][j] if $dp[i][j] >= 0
  res = 0
  if i == N
    res = 0
  elsif j < $w[i]
    res = rec(i+1, j)
  else
    res = [rec(i+1, j), (rec(i+1, j-$w[i])+$v[i])].max
  end
  return $dp[i][j] = res
end

def solve
  puts rec(0, W)
end

solve()

pp $dp

