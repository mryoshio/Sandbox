event 'sky fall' do
  @sky_height < 300
end

event 'sky coming up' do
  @sky_height < @mountains_height
end

setup do
  puts 'set sky height'
  @sky_height = 150
end

setup do
  puts 'set mountain height'
  @mountains_height = 200
end

teardown do
  puts 'test end'
end
