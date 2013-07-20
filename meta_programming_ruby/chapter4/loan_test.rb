class FakeTime
  def self.now; 'Mon Jul 07 12:30:43'; end
end

require 'test/unit'
require './loan'

class TestLoan < Test::Unit::TestCase
  def test_conversation_to_string
    Loan.instance_eval { @time_class = FakeTime }
    loan = Loan.new('War and Peace')
    assert_equal 'WAR AND PEACE loaned on Mon Jul 07 12:30:43', loan.to_s
  end
end
