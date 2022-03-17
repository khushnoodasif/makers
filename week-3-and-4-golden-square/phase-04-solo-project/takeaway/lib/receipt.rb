class Receipt
  def initialize(order)
    @order = order
  end

  def total
    @order.inject(0) { |sum, item| sum + item.price }
  end

  def itemised
    puts "***<Receipt>***"
    @order.each do |item|
      puts "#{item.name} #{item.price}"
    end
    puts "Total: #{total}"
    puts "***</Receipt>***"
  end
end