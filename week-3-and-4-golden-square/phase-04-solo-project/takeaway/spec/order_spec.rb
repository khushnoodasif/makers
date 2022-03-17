require 'order'

RSpec.describe Order do
  it "returns empty list if not dishes found" do
    menu = double :menu
    order = Order.new(menu)
    expect(order.list).to eq([])
  end

  it "returns order list" do
    Pizza = Dish.new("Pizza", 10)
    Pasta = Dish.new("Pasta", 8)
    Sourry_Soup = Dish.new("Sourry Soup", 5)
    Salad = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(Pizza)
    menu.add(Pasta)
    menu.add(Sourry_Soup)
    menu.add(Salad)
    expect(menu.list).to eq(["Pizza : 10", "Pasta : 8", "Sourry Soup : 5", "Salad : 6"])
  end
end