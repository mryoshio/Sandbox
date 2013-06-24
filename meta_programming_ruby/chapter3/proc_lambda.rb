
def double(c_object)
  c_object.call * 2
end

def lambda_test
  l = lambda { return 10 }
  double(l)
end

def proc_test
  p = Proc.new { return 10 }
  result = p.call
  return result * 2
end

puts lambda_test
puts proc_test

p = Proc.new { return 10 }
double(p)
