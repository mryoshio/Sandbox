puts (1..10).inject(0) {|m, x| m + x }
p (1..10).inject([]) {|m, x| m << x }

class Range
  def idx(v)
    idx = (1..10).inject(0) do |m, x|
      return m if x == v
      m + 1
    end
  end
end
puts (1..10).idx(3)
