class Introducer
   def initialize(name)
      @name = name
   end

   def announce
      puts "I am #{@name}"
   end

   def introduce(other)
      puts "Hello #{other}, I am #{@name}"
   end
end

introducer = Introducer.new("Kay")
puts introducer.announce()

puts introducer.introduce("Fred")