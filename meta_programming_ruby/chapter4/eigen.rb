class C
  def eigenclass
    class << self
      self
    end
  end
  class << self
    def a_class_m
      'a_class_m'
    end
  end
end
