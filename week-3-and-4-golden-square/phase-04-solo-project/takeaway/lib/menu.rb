class Menu
  def initialize(dish)
    @dish = dish
  end

  def add(dish)
    @dish << dish
  end

  def remove(dish)
    @dish.delete(dish)
  end

  def list
    @dish.each do |dish|
      puts dish
    end
  end
end