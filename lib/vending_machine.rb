class VendingMachine
  def push_button
    'コーラ'
  end

  def insert(coin)
    raise InvalidCoinError unless coin == 100
    coin
  end
end

class InvalidCoinError < StandardError; end
