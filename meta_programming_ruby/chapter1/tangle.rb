

module Printable
  def print
    puts "#{self}#print1 called"
  end
  def prepare_cover
    puts "#{self}#prepare_cover called"
  end
end

module Document
  def print_to_screen
    puts "#{self}#print_to_screen called"
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    puts "#{self}#format_for_screen called"
  end

  def print
    puts "#{self}#print2 called"
  end
end

class Book
  include Printable
  include Document
end
