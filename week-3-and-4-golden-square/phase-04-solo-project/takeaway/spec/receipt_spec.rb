require 'receipt'

RSpec.describe Receipt do
  it "should return the total of the order" do
    dish = double :dish, name: "dish", price: 10
    dish1 = double :dish1, name: "dish1", price: 10
    order = double :order, list: [dish, dish1]
    receipt = Receipt.new(order)
    expect(receipt.total).to eq(20)
  end

  it 'if not previously added order, returns an error for total' do
    order = double :order, list: []
    receipt = Receipt.new(order)
    expect { receipt.total }.to raise_error("Error: Order not found")
  end

  it 'should return the printed itemised order' do
    dish = double :dish, name: "dish", price: 10
    dish1 = double :dish1, name: "dish1", price: 10
    order = double :order, list: [dish, dish1]
    receipt = Receipt.new(order)
    expect(receipt.itemised).to eq(
      "***<Receipt>***\ndish - £10.00\ndish1 - £10.00\nTotal: £20.00\n***</Receipt>***"
    )
  end

  it 'if not previously added order, returns an error for print receipt' do
    order = double :order, list: []
    receipt = Receipt.new(order)
    expect { receipt.itemised }.to raise_error("Error: Order not found")
  end
end