require 'menu'

RSpec.describe Menu do
  it "returns empty list if not dishes found" do
    menu = Menu.new
    expect(menu.list).to eq([])
  end

  it "returns a dish from menu" do
    dish = double :dish
    menu = Menu.new
    menu.add(dish)
    expect(menu.list).to eq([dish])
  end

  it "returns a list of dishes from menu" do
    dish = double :dish
    dish2 = double :dish2
    dish3 = double :dish3
    menu = Menu.new
    menu.add(dish)
    menu.add(dish2)
    menu.add(dish3)
    expect(menu.list).to eq([dish, dish2, dish3])
  end

  it "removes dish from list" do
    dish = double :dish
    menu = Menu.new
    menu.add(dish)
    menu.remove(dish)
    expect(menu.list).to eq([])
  end

  it "removes multiple dishes from list" do
    dish = double :dish
    dish2 = double :dish2
    dish3 = double :dish3
    menu = Menu.new
    menu.add(dish)
    menu.add(dish2)
    menu.add(dish3)
    menu.remove(dish2)
    menu.remove(dish3)
    expect(menu.list).to eq([dish])
  end

  it "if not previously added dish, returns an error" do
    dish = double :dish
    dish2 = double :dish2
    dish3 = double :dish3
    menu = Menu.new
    menu.add(dish)
    menu.add(dish2)
    expect { menu.remove(dish3) }.to raise_error("Error: Dish not found")
  end
end