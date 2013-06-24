
class CleanRoom
  def complex_calculation
    rand(10)
  end
  def do_something
    puts 'do_something called'
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if complex_calculation > 5
    do_something
  end
end
