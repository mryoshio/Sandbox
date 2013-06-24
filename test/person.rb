
class Person
  def initialize
    @name = nil
    @age = nil
    @sex = nil
  end
  def greeting
    "Hello, my name is #{name}."
  end
  attr_accessor :name, :age, :sex
end

require 'test/unit'

class PersonTest < Test::Unit::TestCase
  def setup
    @person = Person.new
    @person.name = "YAMADA Taro"
    @person.age = 12
    @person.sex = 'm'
  end

  def test_greeting
    assert_equal("Hello, my name is YAMADA Taro.", @person.greeting)
  end

  def test_name_is_not_nil
    assert_not_nil(@person.name)
  end

  def test_age_is_less_than_20
    assert_equal(true, @person.age < 20)
  end

  def test_sex_in_m_or_f
    assert_include(%w(m f), @person.sex)
  end

end
