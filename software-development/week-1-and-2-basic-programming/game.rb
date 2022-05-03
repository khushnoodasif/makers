while true do
   puts "You're facing forward. You can type forward, left, or right."
 
   user_input = gets.chomp
 
   if user_input == "right"
     puts "You were killed by a goblin!"
     break
   elsif user_input == "left"
     puts "You were killed by a werewolf!"
     break
   elsif user_input == "forward"
     # Nothing happens here, we just start the loop again.
   else
     # Same here. Maybe they entered 'chicken' or something.
   end
end