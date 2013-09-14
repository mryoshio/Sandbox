
puts '# class variable test'

class ClassVariableTest
  @@cnt = 0

  def increment
    @@cnt += 1
    self
  end

  def decrement
    @@cnt -= 1
    self
  end

  def cnt
    @@cnt
  end
end

c = ClassVariableTest.new
puts c.cnt
c.increment.tap {|klass| puts klass.cnt } \
  .increment.tap {|k| puts k.cnt } \
  .decrement.tap {|k| puts k.cnt }

puts '# instance variable test'

class InstanceVariableTest
  def increment
    @cnt ||= 0
    @cnt += 1
    self
  end

  def decrement
    @cnt ||= 0
    @cnt -= 1
    self
  end

  def cnt
    @cnt ||= 0
  end
end

c = InstanceVariableTest.new
puts c.cnt
c.increment.tap {|klass| puts klass.cnt } \
  .increment.tap {|k| puts k.cnt } \
  .decrement.tap {|k| puts k.cnt }

puts '# class instance variable test'

class ClassInstanceVariableTest
  @cnt = 0

  class << self
    def increment
      @cnt += 1
      self
    end

    def decrement
      @cnt -= 1
      self
    end

    def cnt
      @cnt
    end
  end
end

c = ClassInstanceVariableTest
puts c.cnt
c.increment.tap {|klass| puts klass.cnt } \
  .increment.tap {|k| puts k.cnt } \
  .decrement.tap {|k| puts k.cnt }
