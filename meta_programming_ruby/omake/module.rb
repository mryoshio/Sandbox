module MyModule
  def m_1; 'm_1' end
  def m_2; 'm_2' end
end

class IncludeInInstance
  include MyModule
end

class IncludeInClass
  class << self
    include MyModule
  end
end

in_instance = IncludeInInstance.new
puts '# in_instance.xx'
puts in_instance.m_1
puts in_instance.m_2

in_class = IncludeInClass.new
begin
  in_class.m_1 # raise error
rescue => e
  puts e
end

begin
  in_class.m_2 # raise error
rescue => e
  puts e
end

puts '# in_instance.xx'
puts IncludeInClass.m_1
puts IncludeInClass.m_2
