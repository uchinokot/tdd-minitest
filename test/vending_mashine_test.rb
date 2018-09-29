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
end
