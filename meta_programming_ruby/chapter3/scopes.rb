
v1 = 1

class MyClass
  v2 = 2
  puts local_variables.to_s

  def my_method
    v3 = 3
    local_variables.to_s
  end

  puts local_variables.to_s

end

o = MyClass.new
puts o.my_method
puts o.my_method
puts local_variables.to_s

