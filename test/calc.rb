require 'minitest/autorun'

class Calc
  def sub(a, b)
    a - b
  end

  def div(a, b)
    a / b
  end
end

class TestCalc < Minitest::Test
  def setup
   @calc = Calc.new
  end

  def test_sub
    assert_equal(2, @calc.sub(3, 1))
    assert_equal(4, @calc.sub(5, 1))
  end

  def test_div
    assert_equal(2, @calc.div(4, 2))
    assert_equal(3, @calc.div(6, 2))
    assert_raises(ZeroDivisionError) do
      @calc.div(0, 0)
    end
  end
end
