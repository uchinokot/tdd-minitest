require 'minitest/autorun'
require './lib/vending_machine'

class TestVendingMachine < Minitest::Test
  def test_select
    vending_machine = VendingMachine.new
    assert_equal(vending_machine.select, 'コーラ')
  end
end
