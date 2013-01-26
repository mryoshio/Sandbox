# -*- coding: utf-8 -*-

class Vertex; end

class Edge
  def initialize(start, goal)
    @s = start
    @e = goal
  end
  attr_accessor :s, :e
end

class Graph
  def initialize
    @vs = []
    @es = {}
  end
  def get_edges(v)
    return es[v]
  end
  attr_accessor :vs, :es
end

vertices = (0..6).inject([]) {|v,i| v << Vertex.new(i+1)}

graph = Graph.new
vertices.each {|v| graph.vs << v}
graph.es[vertices[0]] = [Edge.new(vertices[0],vertices[1]), Edge.new(vertices[0],vertices[4]), Edge.new(vertices[0],vertices[6])]
graph.es[vertices[1]] = [Edge.new(vertices[1],vertices[2]), Edge.new(vertices[1],vertices[3])]
graph.es[vertices[4]] = [Edge.new(vertices[4],vertices[3]), Edge.new(vertices[4],vertices[5])]
graph.es[vertices[5]] = [Edge.new(vertices[5],vertices[3])]

p vertices

######################################################
######################################################

def merge_sort(list)
  return list if list.size <= 1

  mid = list.size / 2
  left = merge_sort(list[0..mid-1])
  right = merge_sort(list[mid..-1])

  merge(left, right)
end

def merge(left, right)
  # left  1,4,5
  # right 2,3,6
  res = []
  left.each do |l|
    cnt = 0
    right.each do |r|
      if l > r
        res << r
        cnt += 1
      end
    end
    res << l
    next if cnt == 0
    (0..cnt-1).each {right.shift}
  end
  res.concat(right)
end

list = (0..100).map {rand(100)}
#p list
# p merge_sort(list)
# p merge_sort(list) === list.sort
