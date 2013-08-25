require 'test/unit'

class Person; end

class TestCheckedAttrbute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age) { |v| v >= 20 }
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

  def add_checked_attribute(klass, attr, &validation)
    klass.class_eval do
      define_method attr do
        instance_variable_get(:@attr)
      end

      define_method "#{attr}=" do |value|
        raise 'Invalid attribute' unless value
        #if block_given?
        #  raise 'Invalid attribute' unless yield(value)
        #end
        raise 'invalid attribute' unless validation.call(value)
        instance_variable_set(:@attr, value)
      end
    end
  end

end
