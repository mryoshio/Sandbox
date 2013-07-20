class Book
  def initialize(title, author)
    @title = title
    @author = author
  end
  attr_accessor :title, :author
end

a = Book.new('one world', 'jal')
b = Book.new('sky team', 'ana')

def a.mine
  "#{title} is mine"
end

puts a.mine
puts b.mine
