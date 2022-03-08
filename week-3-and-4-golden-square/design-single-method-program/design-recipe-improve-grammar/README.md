# Improve Grammar Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
check_sentence = improve_grammar(text)
  # ...
end

#text is a string representing the text to be tested.
#check_sentence is a boolean indicating whether the text is a valid sentence.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLES
#1
improve_grammar("Hello, world!") 
# => true

#2
improve_grammar("hello, world!") 
# => false

#3
improve_grammar("Hello, world")
# => false

#4
improve_grammar("Hello, world?")
# => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._