class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    if self.discount
      self.total = self.total * (1 - self.discount/100.0)
    else
      puts "There is no discount to apply."
    end
  end
end
