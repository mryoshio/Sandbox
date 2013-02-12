class Visitor
  def visit; raise end
end

class Acceptor
  def accept; raise end
end

class Teacher < Visitor
  def initialize
    @visited = []
  end
  def visit(home)
    @visited.push home.name
  end
  attr_accessor :visited
end

class Home < Acceptor
  def accept(teacher)
    teacher.visit(self)
  end
  attr_accessor :name
end

class TaroHome < Home
  def initialize
    @name = "taro home"
  end
end

class HanakoHome < Home
  def initialize
    @name = "hanako home"
  end
end

t = Teacher.new
taro = TaroHome.new ; taro.accept(t)
hanako = HanakoHome.new ; hanako.accept(t)
puts "I visited #{t.visited}."

