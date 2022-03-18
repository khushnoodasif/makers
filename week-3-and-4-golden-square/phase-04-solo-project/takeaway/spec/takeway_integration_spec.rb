require 'menu'
require 'dish'
require 'order'
require 'receipt'
require 'order_confirmation'

RSpec.describe "integration" do
  it "add new dish to menu list" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    expect(menu.list).to eq([dish1, dish2, dish3, dish4])
  end

  it "remove dish from menu list" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    menu.remove(dish1)
    expect(menu.list).to eq([dish2, dish3, dish4])
  end

  it "add dishes to new order and gives out total price" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    order = Order.new(menu)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.select(dish4)
    receipt = Receipt.new(order)
    expect(receipt.total).to eq(29)
  end

  it "removes dishes from order and gives out total price" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    order = Order.new(menu)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.select(dish4)
    order.remove(dish1)
    receipt = Receipt.new(order)
    expect(receipt.total).to eq(19)
  end

  it "adds dishes to new order and gives out itemised receipt" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    order = Order.new(menu)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.select(dish4)
    order.remove(dish1)
    receipt = Receipt.new(order)
    expect(receipt.itemised).to eq("***<Receipt>***\nPasta - £8.00\nSourry Soup - £5.00\nSalad - £6.00\nTotal: £19.00\n***</Receipt>***"
    )
  end

  xit "send user order confirmation text" do
    dish1 = Dish.new("Pizza", 10)
    dish2 = Dish.new("Pasta", 8)
    dish3 = Dish.new("Sourry Soup", 5)
    dish4 = Dish.new("Salad", 6)
    menu = Menu.new
    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)
    menu.add(dish4)
    order = Order.new(menu)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.select(dish4)
    order.remove(dish1)
    receipt = Receipt.new(order)
    order_confirmation = OrderConfirmation.new(receipt.itemised)
    expect(order_confirmation.send_text).to eq("Thank you! Your order was placed and will be delivered before 18:52")
  end
end