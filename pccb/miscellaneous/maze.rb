#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

$maze = []
$maze.push("#S######.#")
$maze.push("......#..#")
$maze.push(".#.##.##.#")
$maze.push(".#........")
$maze.push("##.##.####")
$maze.push("....#....#")
$maze.push(".#######.#")
$maze.push("....#.....")
$maze.push(".####.###.")
$maze.push("....#...G#")

$sx = 1
$sy = 0
$gx = 8
$gy = 9

$dx = [1, 0, -1, 0]
$dy = [0, 1, 0, -1]
$INF = 10000

def bfs
  # init memory
  d = []
  for y in 0..$maze.length-1
    t = []
    for x in 0..$maze[0].length-1
      t.push($INF)
    end
    d.push(t)
  end

  # init que
  que = []
  que.push([$sy, $sx])
  d[$sy][$sx] = 0

  cnt = 0
  while (que.length != 0)
    p que.length
    p_ = que.shift
    #p d[p[0]][p[1]]

    # case:goal
    if p_[0] == $gy and p_[1] == $gx
      break
    end
#    puts "p: #{p[0]}, #{p[1]}"

    for i in 0..3
      ny = p_[0] + $dy[i]
      nx = p_[1] + $dx[i]

#      puts "new: #{nx}, #{ny}"
      #check and enque
      if 0 <= ny and ny < $maze.length and 0 <= nx and nx < $maze[1].length
        if $maze[ny][nx] != '#' and d[y][x] == $INF
#          puts "-->in, #{nx}, #{ny}"
          que.push([ny, nx])
          d[ny][nx] = d[p_[0]][p_[1]] + 1
        end
      end
    end
#    break
#    p d
    puts ""
  end
  return d[gy][gx]
end

def main
  res = bfs()
  puts "ans = " + res.to_s
end

main
