
def my_method
  return yield if block_given?
  puts 'no block is given'
end

v1 = 1
my_method do

  v1 += 1
  v2 = 1

end

my_method



begin
  puts v1
  puts v2
rescue Exception => ex
  puts ex
end



