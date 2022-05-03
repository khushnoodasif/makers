input_number = gets.chomp.to_i

if input_number % 3 == 0 && input_number % 5 == 0
   puts "FizzBuzz"
elsif input_number % 3 == 0
   puts "Fizz"
elsif input_number % 5 == 0
   puts "Buzz"
else
   puts input_number
end
