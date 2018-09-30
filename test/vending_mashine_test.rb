require 'minitest/autorun'
require './lib/vending_machine'

class TestVendingMachine < Minitest::Test
  def setup
    @vending_machine = VendingMachine.new
  end

  def test_push_button
    @vending_machine.insert(100)
    assert_equal('炭酸水', @vending_machine.push_button('炭酸水'))
  end

  def test_push_button_for_redbul
    @vending_machine.insert(100)
    result = @vending_machine.push_button('レッドブル')
    assert_equal(nil, result)

    @vending_machine.insert(100)
    result = @vending_machine.push_button('レッドブル')
    assert_equal('レッドブル', result)

    @vending_machine.insert(100)
    result = @vending_machine.push_button('レッドブル')
    assert_equal('レッドブル', result)
  end

  def test_push_button_for_coke
    @vending_machine.insert(100)
    result = @vending_machine.push_button('コーラ')
    assert_equal(nil, result)

    @vending_machine.insert(100)
    result = @vending_machine.push_button('コーラ')
    assert_equal('コーラ', result)
  end

  def test_push_button_for_olong_tea
    @vending_machine.insert(100)
    result = @vending_machine.push_button('ウーロン茶')
    assert_equal(nil, result)

    @vending_machine.insert(100)
    result = @vending_machine.push_button('ウーロン茶')
    assert_equal('ウーロン茶', result)
  end

  def test_push_button_for_sparkling_water
    @vending_machine.insert(100)
    result = @vending_machine.push_button('炭酸水')
    assert_equal('炭酸水', result)
  end

  def test_insert
    result = @vending_machine.insert(100)
    assert_equal(100, result)

    assert_raises(InvalidCoinError) do
      @vending_machine.insert(200)
    end
  end

  def test_total_insert_price
    @vending_machine.insert(100)
    @vending_machine.insert(100)
    total_inserted_price = @vending_machine.total_inserted_price
    assert_equal(200, total_inserted_price)

    @vending_machine.insert(100)
    total_inserted_price = @vending_machine.total_inserted_price
    assert_equal(300, total_inserted_price)
  end
end
