module MyModule
  def my_m
      'hello'
  end
end

class MyClass
  class << self
    include MyModule
  end
end

MyClass.my_m
