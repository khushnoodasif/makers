require "send_text"

RSpec.describe SendText do
  let(:client) { double(:client) }
  let(:order_confirmation) { double(:order_confirmation, message: "Thank you! Your order was placed and will be delivered before 20:10") }
  subject(:message_sender) { SendText.new(order_confirmation, client) }

  it "sends an order confirmation message to a given phone number" do
    expect(client).to receive(:new).with(ENV["account_sid"], ENV["auth_token"]).and_return(dbl_1 = double(:dbl_1))
    expect(dbl_1).to receive(:messages).and_return(dbl_2 = double(:dbl_2))
    expect(dbl_2).to receive(:create).with({ from: "+447778888888",
    to: "+447778888555", body: "Thank you! Your order was placed and will be delivered before 20:10"})
    expect(message_sender.send_text("+447778888555")).to eq("Sent: Thank you! Your order was placed and will be delivered before 20:10")
  end
end