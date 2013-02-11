class Singleton

  @@singleton = nil

  def self.instance
    return @@singleton if @@singleton
    @@singleton = new
  end

  private_class_method :new

end

c1 = Singleton.instance
c2 = Singleton.instance
c3 = Singleton.instance

p c1
p c2
p c3
p c1 == c2 && c2 == c3
