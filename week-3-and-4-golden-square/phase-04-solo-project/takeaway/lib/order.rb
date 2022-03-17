class order
  def initialize(menu)
    @menu = menu
    @order = []
  end

  def select(dish)
    @order << dish
  end

  def remove(dish)
    @order.delete(dish)
  end
end