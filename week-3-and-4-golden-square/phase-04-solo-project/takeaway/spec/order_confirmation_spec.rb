require 'order_confirmation'

RSpec.describe OrderConfirmation do
  xit "sends a text message to the customer" do
    order = Order.new(menu)
    order.select(menu.list[0])
    order.select(menu.list[1])
    order.select(menu.list[2])
    receipt = Receipt.new(order)
    order_confirmation = OrderConfirmation.new(receipt)
    order_confirmation.send_text(number_request)
  end

  xit "sends a text message to the customer" do
    order = double :order
    receipt = Receipt.new(order)
    order_confirmation = OrderConfirmation.new(receipt)
    expect(order_confirmation.send_text(number_request)).to eq(
      "Thank you! Your order was placed and will be delivered before 18:52"
    )
  end
end