inc = Proc.new {  |x| x + 1 }

=begin this does not work
def proc_test
  inc.call(2)
end
=end

Kernel.send :define_method, :proc_test do
  inc.call(2)
end

puts proc_test
