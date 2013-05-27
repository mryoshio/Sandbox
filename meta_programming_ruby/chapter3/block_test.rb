
def my_method
  yield
end

v1 = 1
my_method do
  v1 += 1
  v2 = 1
end


begin
  puts v1
  puts v2
rescue Exception => ex
  puts ex
end

