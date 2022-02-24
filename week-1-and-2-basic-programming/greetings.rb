puts "Welcome! Whats your name?"

user = gets.chomp.upcase

if user.chr == "S"
   puts user.upcase
else
   puts "Hi, " + user.downcase
end