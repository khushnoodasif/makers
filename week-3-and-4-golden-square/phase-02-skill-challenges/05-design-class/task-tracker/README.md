# Track Task Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class TodoList
  def initialize(name) # name is a string
    # ...
  end
  def add(task) # task is a string
    # ...
  end
  def see_task_list(task) # task is a string
    # No return value
  end
  def completed_tasks()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
end
```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby
# EXAMPLE
# 1
todo = TodoList.new("Groceries")
todo.add("Milk")
todo.add("Eggs")
todo.add("Bread")
todo.see_task_list()
# => "Groceries: Milk, Eggs, Bread"

# 2
todo = TodoList.new("Kush")
todo.add("Cannabis")
todo.add("Cocaine")
todo.add("Marijuana")
todo.see_task_list()
# => "Kush: Cannabis, Cocaine, Marijuana"

# 3
todo = TodoList.new("Shopping")
todo.see_task_list()
# => "Shopping: No tasks to do!"

# 4
todo = TodoList.new("Groceries")
todo.add("Milk")
todo.completed_tasks("Milk")
todo.see_task_list()
# => "Groceries: Milk is completed!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
