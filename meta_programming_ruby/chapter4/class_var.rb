@@var = 1

class MyClass
  @@var = 2
  def self.var
    @@var
  end
end

puts "MyClass.var is #{MyClass.var}"
puts "Main context, @@var is #{@@var}"
