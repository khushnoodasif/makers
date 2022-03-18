require 'order_confirmation'

RSpec.describe OrderConfirmation do
  let(:requester) { double :requester }
  subject { described_class.new(requester) }

  describe '#send_text' do
    it 'sends a text message to the requester' do
      allow(requester).to receive(:number_request).and_return('+441234123456')
      allow(requester).to receive(:total).and_return(12.34)
      allow(Time).to receive(:now).and_return(Time.new(2019, 12, 12, 12, 12))
      allow(requester).to receive(:new).and_return(requester)
      allow(requester).to receive(:account).and_return(requester)
      allow(requester).to receive(:messages).and_return(requester)
      allow(requester).to receive(:create).and_return(requester)

      expect(requester).to receive(:create).with(from: '+441234123456',
                                                  to: '+441234123456',
                                                  body: "Thank you for your order! Your total is £12.34. Your order will be delivered before 12:12.")
      subject.send_text
    end
  end
end