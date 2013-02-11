class Aggregate
  def iterator
    raise
  end
end

class Iterator
  def hasNext
    raise
  end
  def next
    raise
  end
end

class StudentList < Aggregate
  def initialize(list)
    @students = list
  end
  def iterator
    return StudentIterator.new(self)
  end
  attr_accessor :students
end

class StudentIterator < Iterator
  def initialize(aggregate)
    @aggregator = aggregate
    @index = 0
  end
  def hasNext
    if @aggregator.students.size > @index
      return true
    else
      return false
    end
  end
  def next
    s = @aggregator.students[@index]
    @index+=1
    return s
  end
end

class Student
  def initialize(name, age)
    @name = name
    @age = age
  end
end

# main
students = [
            { "name" => "mike", "age" => 18 },
            { "name" => "tom", "age" => 36 },
            { "name" => "kathy", "age" => 22 }
           ]

sl = StudentList.new(students)
it = sl.iterator
while (it.hasNext)
  p it.next
end
