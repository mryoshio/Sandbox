
class Lawyer
  def method_missing(method, *args)
    puts "#{method}(#{args.join(', ')}) called"
    puts '(block passed)' if block_given?
  end

end
