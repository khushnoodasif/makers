class Order
  def initialize(menu)
    @menu = menu
    @order = []
  end

  def select(dish)
    @order << dish
  end

  def remove(dish)
    if @order.include?(dish)
      @order.delete(dish)
    else fail "Error: Dish not found"
    end
  end

  def list
    @order
  end
end
