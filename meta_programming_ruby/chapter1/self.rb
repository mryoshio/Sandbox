module Y

  p 'in module'
  p self

  class MyClass

    p 'in module::class'
    p self

    def testing_self
      @var = 10
      my_method()
      self
    end
    def my_method
      @var += 1
    end
  end
end

o = Y::MyClass.new
p o.testing_self
