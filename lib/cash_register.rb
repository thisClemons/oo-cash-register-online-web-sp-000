class CashRegister

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += quantity*price
    @items.push(title)
  end

  def apply_discount
    @total *= 1 - (@discount * 0.01)
    "After the discount, the total comes to $#{total}."
  end




end
