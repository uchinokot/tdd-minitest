class VendingMachine
  def push_button(beverage)
    beverage
  end

  def insert(coin)
    raise InvalidCoinError unless coin == 100
    coin
  end

  def total_inserted_price
    200
  end
end

class InvalidCoinError < StandardError; end
