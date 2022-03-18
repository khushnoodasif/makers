require 'order'

RSpec.describe Order do
  it "returns empty list if not dishes found" do
    menu = double :menu
    order = Order.new(menu)
    expect(order.list).to eq([])
  end

  it "returns order list" do
    dish = double :dish
    dish1 = double :dish1
    dish2 = double :dish2
    dish3 = double :dish3
    menu = double :menu
    order = Order.new(menu)
    allow(order).to receive(:list).and_return([dish, dish1, dish2, dish3])
    expect(order.list).to eq([dish, dish1, dish2, dish3])
  end

  it "adds a dish to order list" do
    dish = double :dish, name: "dish", price: 10
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    expect(order.list).to eq([dish])
  end

  it "adds a dish to order list" do
    dish = double :dish, name: "dish", price: 10
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    expect(order.list).to eq([dish])
  end

  it "adds multiple dishes to order list" do
    dish = double :dish
    dish1 = double :dish1
    dish2 = double :dish2
    dish3 = double :dish3
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    expect(order.list).to eq([dish, dish1, dish2, dish3])
  end

  it "removes a dish from order list" do
    dish = double :dish
    dish1 = double :dish1
    dish2 = double :dish2
    dish3 = double :dish3
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.remove(dish3)
    expect(order.list).to eq([dish, dish1, dish2])
  end

  it "removes multiple dishes from order list" do
    dish = double :dish
    dish1 = double :dish1
    dish2 = double :dish2
    dish3 = double :dish3
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    order.select(dish1)
    order.select(dish2)
    order.select(dish3)
    order.remove(dish2)
    order.remove(dish3)
    expect(order.list).to eq([dish, dish1])
  end

  it "if not previously added dish, returns an error" do
    dish = double :dish
    dish2 = double :dish2
    dish3 = double :dish3
    menu = double :menu
    order = Order.new(menu)
    order.select(dish)
    order.select(dish2)
    expect { order.remove(dish3) }.to raise_error("Error: Dish not found")
  end
end