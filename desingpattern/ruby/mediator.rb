class Mediator
  def initialize
    @colleagues = []
  end
  def add_colleague(colleague)
    @colleagues.push colleague
  end
  def consult; end
end

class Colleague
  def initialize
    @mediator = nil
  end
  def get_advice; end
  attr_accessor :mediator
end

class Boss < Mediator
  def consult
    return Random.rand()*100.floor
  end
end

class Person < Colleague
  def initialize(name)
    @name = name
  end
  def get_advice
    puts "Boss says #{@name}'s annual salary is #{@mediator.consult}"
  end
end

b = Boss.new
c1 = Person.new("Tom") ; c1.mediator = b
c2 = Person.new("Jane") ; c2.mediator = b
b.add_colleague(c1)
b.add_colleague(c2)

puts c1.get_advice
puts c2.get_advice
