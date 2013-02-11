
class Family
  def organize
    raise
  end
end

class Adapter < Family
  def initialize
    @son = Son.new
  end
  def watch
    @son.watch_malathon
  end
end

class Son
  def watch_malathon
    puts "watch malathon!"
  end
end

class Daughter
  def watch_skate
    puts "watch skate"
  end
end

a = Adapter.new
a.watch
