s = 'He died 2 years ago.'

def s.title?
  self.upcase == self
end

puts s.title?
puts s.methods.grep /title/
puts s.singleton_methods
