class VendingMachine
  attr_accessor :total_inserted_price

  def initialize
    @total_inserted_price = 0
  end

  def push_button(beverage)
    beverage
  end

  def insert(coin)
    raise InvalidCoinError unless coin == 100
    self.total_inserted_price += coin
    coin
  end
end

class InvalidCoinError < StandardError; end
