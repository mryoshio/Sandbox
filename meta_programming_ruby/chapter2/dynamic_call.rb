class MyClass
  def my_method(arg)
    arg * 2
  end
end

o = MyClass.new
p o.my_method(3)
p o.send(:my_method, 3)
