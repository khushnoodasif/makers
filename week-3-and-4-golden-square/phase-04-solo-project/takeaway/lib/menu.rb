class Menu
  def initialize
   @menu = []
  end

  def add(dish)
    @menu << dish
  end

  def remove(dish)
    if @menu.include?(dish)
      @menu.delete(dish)
    else fail "Error: Dish not found"
    end
  end

  def list
    @menu
  end
end