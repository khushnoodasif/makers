puts "Welcome to the Supermarket Customer Counter!"

num_of_customers = 0
input = ""

while input.downcase != "exit"
    print "Enter '+', '-' or 'exit':  "
    input = gets.chomp
    if input == "+"
        puts "Total Customers: #{num_of_customers += 1}."
    elsif input == "-"
        num_of_customers -= 1
        if num_of_customers >= 0
            puts "Total Customers: #{num_of_customers}."
        else
            puts "ERROR: Cannot have negative number."
            num_of_customers = 0
        end
    elsif input.downcase == "exit"
        puts "Exiting Program."
    else input.downcase != "exit"
        puts "ERROR: Invalid Text."
    end
end
