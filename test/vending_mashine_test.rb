require 'minitest/autorun'
require './lib/vending_machine'

class TestVendingMachine < Minitest::Test
  def test_push_button
    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    assert_equal(vending_machine.push_button('コーラ'), 'コーラ')

    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    assert_equal(vending_machine.push_button('ウーロン茶'), 'ウーロン茶')

    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    assert_equal(vending_machine.push_button('炭酸水'), '炭酸水')
  end

  def test_insert
    vending_machine = VendingMachine.new
    result = vending_machine.insert(100)
    assert_equal(result, 100)

    vending_machine = VendingMachine.new
    assert_raises(InvalidCoinError) do
      vending_machine.insert(200)
    end
  end

  def test_total_insert_price
    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    vending_machine.insert(100)
    total_inserted_price = vending_machine.total_inserted_price
    assert_equal(200, total_inserted_price)

    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    vending_machine.insert(100)
    vending_machine.insert(100)
    total_inserted_price = vending_machine.total_inserted_price
    assert_equal(300, total_inserted_price)
  end
end
