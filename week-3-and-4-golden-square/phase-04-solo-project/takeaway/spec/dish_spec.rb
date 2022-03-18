require 'dish'

RSpec.describe Dish do
  it "returns dish name" do
    dish = Dish.new("Pizza", 10)
    expect(dish.name).to eq("Pizza")
  end

  it "returns dish price" do
    dish = Dish.new("Pizza", 10)
    expect(dish.price).to eq(10)
  end

  it "returns empty list if not dishes found" do
    dish = Dish.new("", 0)
    expect(dish.name).to eq("")
  end
end