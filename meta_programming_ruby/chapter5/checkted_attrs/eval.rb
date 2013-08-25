require 'test/unit'

class Person; end

class TestCheckedAttrbute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
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

  def add_checked_attribute(klass, attr)
    eval "
    class #{klass}
      def #{attr}()
        @#{attr}
      end

      def #{attr}=(value)
        raise 'Invalid attribute' unless value
        @#{attr} = value
      end
    end
    "
  end

end
