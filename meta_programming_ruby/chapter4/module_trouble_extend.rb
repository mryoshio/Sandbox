module MyModule
  def my_m
    'hello'
  end
end

class MyClass
  extend MyModule
end

MyClass.my_m
