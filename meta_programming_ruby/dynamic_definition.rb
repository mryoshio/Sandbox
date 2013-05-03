class MyClass
  define_method :my_method do |args|
    args * 3
  end
end

o = MyClass.new
p o.my_method(4)
