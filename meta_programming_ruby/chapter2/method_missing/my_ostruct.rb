
class MyOpenStruct
  def initialize
    @attrs = {}
  end

  def method_missing(name, *args)
    attr = name.to_s
    if attr =~ /=$/
      @attrs[attr.chop] = args[0]
    else
      @attrs[attr]
    end
  end
end
