
module Y
  class MyClass
    def my_method
      'my_method()'
    end
  end
  class MySubClass < MyClass
  end
end

o = Y::MySubClass.new
p o.my_method()
p o.class.ancestors
