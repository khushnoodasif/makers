# Create a program that
# prompts the user for details about their favourite animal
# stores the details as values, assigned to appropriate keys
# prints the hash once the interrogation has finished

hash_animal = {:name => "animal"}
puts "What is your favourite animal?"
hash_animal[:animal] = gets.chomp

puts hash_animal

# Create a program that
# prints all the keys in a hash
# prompts the user to select a key
# returns the value associated with that key

all_animal = {:animal => "dog", "cat", "bird"}
puts all_animal.keys

# Iterate over a hash and print only the values that begin with 'S'