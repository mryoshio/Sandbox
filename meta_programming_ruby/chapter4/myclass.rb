class MyClass
  puts 'hello'
end

result = class MyClass
           self
         end
puts result

class MyClass2
  def m_one
    def m_two
      puts 'hello'
    end
  end
end
o = MyClass2.new
o.m_one
o.m_two
