
# simple method

def to_alphanumeric(s)
  s.gsub /[^\w\s]/, ''
end

require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
  end
end

# string extension

class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

class StringExtensionTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end

# open class (Numeric)

class Numeric
  def to_money
    puts ('---> Numeric#to_money called')
  end
end

1.to_money

# open class (Array)

class Array
  def replace(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

class ArrayTest < Test::Unit::TestCase
  def test_replace
    book_topics = ['html', 'java', 'css']
    book_topics.replace('java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal expected, book_topics
  end
end
