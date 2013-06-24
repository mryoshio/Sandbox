
def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &ope)
# def teach_math(a, b) # NG because ope is not found
  puts 'start calc'
  puts math(a, b, &ope)
end

teach_math(2, 3) { |x, y| x * y }

def my_method(&the_proc)
  the_proc
end


#ppp = my_method { |name| "Hello, #{name}" }
ppp = my_method { |name| "Hello, #{name}" }
puts ppp.class
puts ppp.call('Bill')
