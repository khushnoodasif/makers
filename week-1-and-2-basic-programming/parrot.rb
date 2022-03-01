input = ""
while input.upcase != "STOP"
    input = gets.chomp
    if input.upcase != "STOP"
        puts "You said #{input}!"
    end
end
