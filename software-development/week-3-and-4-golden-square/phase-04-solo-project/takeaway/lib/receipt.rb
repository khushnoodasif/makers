class Receipt
  def initialize(order)
    @order = order
  end

  def total 
    if @order.list.empty?
      fail "Error: Order not found"
    else @order.list.inject(0) { |sum, dish| sum + dish.price }
    end
  end

  def itemised
    if @order.list.empty?
      fail "Error: Order not found"
    else 
      itemised = "***<Receipt>***\n"
      @order.list.each do |dish|
        itemised += "#{dish.name} - £%.2f\n" % [dish.price]
      end
      itemised += "Total: £%.2f\n" % [total] + "***</Receipt>***"
    end
  end
end