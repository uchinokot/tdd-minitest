require 'minitest/autorun'

class Calc
  def sub(a, b)
    nil
  end
end

class TestCalc < Minitest::Test
  def test_sub
    calc = Calc.new
    result = calc.sub(3, 1)
    assert_equal(2, result)
  end
end
