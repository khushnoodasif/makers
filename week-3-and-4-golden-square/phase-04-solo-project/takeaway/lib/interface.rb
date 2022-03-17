class Interface
  def initialize

  end

  def menu
    @menu = Menu.new
    return @menu.list
  end

  def new_order 
    @order = Order.new(@menu)
  end

  def number_request
    puts "Please enter your number"
    return gets.chomp
  end

  def print_receipt
    @receipt = Receipt.new(@order)
    @receipt.itemised
  end
end