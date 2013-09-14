
class Ghost
  def my_name
    @my_name ||= 'Taro'
  end

  def method_missing(name, *args)
    'Jiro' if name =~ /^your/
  end
end

g = Ghost.new
puts g.my_name
puts g.your_name
