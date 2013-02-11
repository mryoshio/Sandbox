class Meal
  def initialize
    @state = nil
  end
  def change_state(state)
    @state = state
  end
  def morning
    @state.morning
  end
  def lunch
    @state.lunch
  end
  def dinner
    @state.dinner
  end
  attr_accessor :state
end

class State
  def morning; raise end
  def lunch; raise end
  def dinner; raise end
end

class RichState < State
  def morning
    puts "in hotel"
  end
  def lunch
    puts "kaiseki"
  end
  def dinner
    puts "french"
  end
end

class PoorState < State
  def morning
    puts "nothing"
  end
  def lunch
    puts "rice and miso soup"
  end
  def dinner
    puts "one bread"
  end
end

# main
meal = Meal.new
[PoorState, RichState].each do |s|
  meal.state = s.new
  puts "--- state #{meal.state}"
  [:morning, :lunch, :dinner].each do |m|
    meal.send m
  end
end
