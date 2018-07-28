class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
  end

  def add_item(title, price, quantity=0)
    self.total += total + price
  end
end
