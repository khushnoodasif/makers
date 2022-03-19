require './lib/menu'
require './lib/dish'
require './lib/order'
require './lib/receipt'
require './lib/order_confirmation'
require './lib/send_text'

class Interface
  def initialize(menu)
    @menu = menu
    @order = Order.new(@menu)
    @receipt = Receipt.new(@order)
  end

  def menu
    puts "***<Menu>***"
    @menu.list.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish.name} - £%.2f" % [dish.price]
    end
    puts "***</Menu>***"
  end

  def new_order 
    puts "***<New Order>***"
    puts "Please enter the number of the dish you would like to order."
    number = gets.chomp
    if number.to_i >= 1 && number.to_i < @menu.list.length
      @order.select(@menu.list[number.to_i - 1])
      puts "You have ordered #{@menu.list[number.to_i - 1].name}"
      puts "Do you want to order another dish? (y/n)"
      answer = gets.chomp
      if answer == "y"
        new_order
      puts "Do you want to remove a dish? (y/n)"
      answer = gets.chomp
      if answer == "y"
        remove_order
      else puts "***</New Order>***"
      end
      end
    else
      puts "Error: Dish not found"
    end
  end

  def remove_order
    puts "Please enter the number of the dish you would like to remove."
    number = gets.chomp
    if number.to_i >= 1 && number.to_i < @order.list.length
      @order.remove(@menu.list[number.to_i - 1])
      puts "You have removed #{@menu.list[number.to_i - 1].name}"
      puts "Do you want to remove another dish? (y/n)"
      answer = gets.chomp
      if answer == "y"
        remove_order
      else puts "***</New Order>***"
      end
    end
  end

  def print_receipt
    puts @receipt.itemised unless @order.list.empty?
  end

  def number_request
    puts "Please enter your phone number for delivery."
    customer_number = gets.chomp
  end
  
  def text_customer(customer_number)
    send_text(customer_number)
  end
  
  def menu_interface
    loop do
    puts "***<Menu Interface>***"
    puts "Select one of the option below:\n1. Menu\n2. New Order\n3. Print Receipt\n4. Send Text\n5. Exit"
    puts "***</Menu Interface>***"
      menu_options(gets.chomp)
    end
  end
  
  def menu_options(input)
    case input
    when "1"
      menu
    when "2"
      new_order
    when "3"
      print_receipt
    when "4"
      text_customer(number_request)
    when "5"
      exit
    else
      puts "Error: Invalid option"
    end
  end
end

# Pizza = Dish.new("Pizza", 10)
# Pasta = Dish.new("Pasta", 8)
# Sourry_Soup = Dish.new("Sourry Soup", 5)
# Salad = Dish.new("Salad", 6)
# menu = Menu.new
# menu.add(Pizza)
# menu.add(Pasta)
# menu.add(Sourry_Soup)
# menu.add(Salad)
# interface = Interface.new(menu)
# interface.menu
# interface.menu_interface