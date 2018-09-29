class VendingMachine
  def push_button(beverage)
    beverage
  end

  def insert(coin)
    raise InvalidCoinError unless coin == 100
    coin
  end
end

class InvalidCoinError < StandardError; end
