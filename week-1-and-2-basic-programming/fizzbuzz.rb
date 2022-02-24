input = gets.chomp.to_i

if input % 3 == 0 && input % 5 == 0
   puts "FizzBuzz"
elsif input % 3 == 0
   puts "Fizz"
elsif input % 5 == 0
   puts "Buzz"
else
   puts input
end
