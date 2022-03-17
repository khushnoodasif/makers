class OrderConfirmation
  def initialize(receipt)
    @receipt = receipt
  end

  def send_text(number)
    puts "Sending text to #{number}"
  end
end