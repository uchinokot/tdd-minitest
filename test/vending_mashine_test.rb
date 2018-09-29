require 'minitest/autorun'
require './lib/vending_machine'

class TestVendingMachine < Minitest::Test
  def test_push_button
    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    assert_equal(vending_machine.push_button, 'コーラ')
  end
end
