
class String
  alias :old_size :size
  def size
    self.old_size * 10
  end
end

s = 'aaaa'
puts "aaaa.size => #{s.size}"

