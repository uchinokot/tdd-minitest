class VendingMachine
  attr_accessor :total_inserted_price
  PRICE_REDBULL = 200

  def initialize
    @total_inserted_price = 0
  end

  def push_button(beverage)
    case beverage
    when 'レッドブル'
      if total_inserted_price >= PRICE_REDBULL
        return 'レッドブル'
      else
        return nil
      end
    end
    beverage
  end

  def insert(coin)
    raise InvalidCoinError unless coin == 100
    self.total_inserted_price += coin
    coin
  end
end

class InvalidCoinError < StandardError; end
