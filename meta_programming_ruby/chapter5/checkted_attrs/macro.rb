require 'test/unit'

class Class
  def attr_checked(attr, &validation)
    define_method attr do
      instance_variable_get(:@attr)
    end

    define_method "#{attr}=" do |value|
      raise 'Invalid attribute' unless value
      raise 'invalid attribute' unless validation.call(value)
      instance_variable_set(:@attr, value)
    end
  end
end

class Person
  attr_checked :age do |v|
    v >= 20
  end
end

class TestCheckedAttrbute < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 19
    end
  end


end
