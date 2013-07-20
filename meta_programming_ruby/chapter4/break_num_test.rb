require 'test/unit'

class FixnumTest < Test::Unit::TestCase
  require './break_num'

  def test_math_is_broken
    assert_equal 3, 1 + 1
    assert_equal 0, -1 + 0
    assert_equal 101, 46 + 54
  end
end
