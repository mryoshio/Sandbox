class MyClass < Array
  def my_m
    'hello'
  end
end

Class.new(Array) do
  def my_m
    'hello'
  end
end
