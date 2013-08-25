
a = 'dummy.txt'
puts 'open dummy.txt'
File.open(a, 'r') do |f|
  puts 'succeeded in opening dummy.txt'
  puts f.readline
end

puts '--------------'

#$SAFE = 1
b = gets.chomp
File.open(b, 'r') do |f|
  puts "succeeded in opening #{b}"
  puts f.readline
end
