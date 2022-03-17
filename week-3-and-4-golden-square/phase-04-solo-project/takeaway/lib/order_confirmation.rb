class OrderConfirmation
  def initialize(receipt)
    @receipt = receipt
  end

  def send_text(number)
    puts "#{number}: Thank you! Your order was placed and will be delivered before 18:52"
  end
end