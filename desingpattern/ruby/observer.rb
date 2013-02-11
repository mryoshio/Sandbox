class Observer
  def update; end
end

class Subject
  def initialize
    @observers = []
  end
  def addObserver(observer)
    @observers.push observer
  end
  def notifyObservers
    @observers.each do |o|
      o.update
    end
  end
  def update; end
end

class Teacher < Observer
  def update
    puts "teacher#update"
  end
end

class Student < Subject
  def update
    @observers[0].update
  end
end

t = Teacher.new
s = Student.new
s.addObserver(t)
s.update
