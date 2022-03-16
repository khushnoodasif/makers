# Takeaway Planned Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

## 2. Design the Class System

_Diagram of the classes and their relationships._

<img src="./design-recipe-takeaway.png">

_Design interface of each class in more detail._

```ruby
class Menu
  def initialize(dish) # 
  end

  def add(dish) # dish is a instance of Dish, adds dish to the menu.
  end

  def remove(dish) # dish is a string, removes dish from the menu.
  end

  def list
  end
end

class Dish
  def initialize(name, price) # name is a string, price is a float.
  end

  def name # returns the name of the dish.
  end

  def price  # returns the price of the dish.
  end
end

class Order
  def initialize(menu) # menu is a string
  end

  def select(dish) # dish is a string, adds dish to the order.
  end

  def remove(dish) # dish is a string, removes dish from the order.
  end
end

class Receipt
  def initialize(order) # order is an instance of Order
  end

  def total # returns the total price of the order.
  end
end

class OrderConfirmation
  def initialize(number) # number is a string
  end

  def send_text # sends a text to the customer.
  end
end

class Interface
  def initialize()
  end

  def menu # returns the menu.
  end

  def new_order # returns a new order.
  end

  def number_request # returns a string and ask user to enter phone number.
  end

  def print_receipt # prints the receipt.
  end
end
```
## 3. Create Examples as Integration Tests
_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._
```ruby
# EXAMPLE
# As a user
# So that I can record my experiences
# I want to keep a regular diary
# As a user
# So that I can reflect on my experiences
# I want to read my past diary entries

# 1
diary = Diary.new
entry = DiaryEntry.new("My first entry", "I had a great day!")
diary.add(entry)
expect(diary.entries).to eq([entry])
----------------------------------------------------------------
# As a user
# So that I can reflect on my experiences in my busy day
# I want to select diary entries to read based on how much time I have and my reading speed
# 2  - fits perfectly
diary = Diary.new
reader = DiaryReader.new(2, diary)
entry = DiaryEntry.new("My first entry", "I had a great day!")
entry2 = DiaryEntry.new("My second entry", "terrible day!")
diary.add(entry)
diary.add(entry2)
expect(reader.find_readable(2)).to eq([entry])
# 3 - doesnt fit exactly
diary = Diary.new
reader = DiaryReader.new(2, diary)
entry = DiaryEntry.new("My first entry", "great day!")
entry2 = DiaryEntry.new("My second entry", "not terrible day!")
entry3 = DiaryEntry.new("My third entry", "I had a terrible day!")
diary.add(entry)
diary.add(entry2)
diary.add(entry3)
expect(reader.find_readable(2)).to eq([entry2])
# 4 - nothing is readable
diary = Diary.new
reader = DiaryReader.new(2, diary)
entry = DiaryEntry.new("My first entry", "I had a great day!")
diary.add(entry)
expect(reader.find_readable(2)).to eq nil
# 5 - nothing at all
diary = Diary.new
reader = DiaryReader.new(2, diary)
expect(reader.find_readable(2)).to eq nil
# 6 - wmp invalid
diary = Diary.new
reader = DiaryReader.new(0, diary) # fail as wmp is zero
----------------------------------------------------------------
# As a user
# So that I can keep track of my tasks
# I want to keep a todo list along with my diary
# 7
task_list = Tasklist.new
task = Task.new("My first task")
task_list.add(task)
expect(task_list.all("My first task")).to eq([entry])
----------------------------------------------------------------
# As a user
# So that I can keep track of my contacts
# I want to see a list of all of the mobile phone numbers in all my diary entries
# 8 
diary = Diary.new
phone_book = PhoneBook.new(diary)
diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
diary.add(DiaryEntry.new("My second entry", "terrible day!, 1234567890"))
expect(phone_book.extract_numbers).to eq(["1234567890"])
# 9
diary = Diary.new
phone_book = PhoneBook.new(diary)
diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
diary.add(DiaryEntry.new("My second entry", "terrible day!, 1234567890"))
diary.add(DiaryEntry.new("My third entry", "I had a terrible day!, 1234567891"))
expect(phone_book.extract_numbers).to eq(["1234567890, 1234567891"])
# 10
task_list = TaskList.new
task = Task.new("Today I went to the park")
task2 = Task.new("Today I went to the school")
task_list.add(task)
task_list.add(task2)
expect(task_list.all).to eq [task, task2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# 1 - empty list of entries
diary = Diary.new
expect(diary.entries).to eq []
# 2 - add tasks to list
task_list = TaskList.new
task = Task.new("Today I went to the park")
task2 = Task.new("Today I went to the school")
task_list.add(task)
task_list.add(task2)
expect(task_list.all).to eq [task, task2]
# 3 - returns empty if no tasks were found
task_list = TaskList.new
expect(task_list.all).to eq []
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
