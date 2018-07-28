class CashRegister
  attr_accessor :total, :discount

  @items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    self.items << title unless self.items.include?(title)
  end

  def apply_discount
    if self.discount
      self.total = self.total * (1 - self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items

  end
end
