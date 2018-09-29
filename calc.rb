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
  def test_sub
    calc = Calc.new
    result = calc.sub(3, 1)
    assert_equal(2, result)

    calc = Calc.new
    result = calc.sub(5, 1)
    assert_equal(4, result)
  end

  def test_div
    calc = Calc.new
    result = calc.div(4, 2)
    assert_equal(2, result)

    calc = Calc.new
    result = calc.div(6, 2)
    assert_equal(3, result)


    assert_raises(ZeroDivisionError) do
      calc = Calc.new
      calc.div(0, 0)
    end
  end
end
