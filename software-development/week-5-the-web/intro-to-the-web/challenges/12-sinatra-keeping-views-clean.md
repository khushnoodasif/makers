# Sinatra: Keeping views clean
Our web application now serves a **dynamic** page. That is: a webpage that does not always look the same.

However, we've started littering our views with complex Ruby expressions. Thinking back to the _Single Responsibility Principle_, this doesn't make good sense: our views' responsibility should be to present something, not to calculate _and_ present it.

Our presentation layer should not be cluttered with this kind of randomising logic. Rule of thumb: view logic should be limited to:

- Simple Conditionals (i.e. `if` and `else`), and
- Simple Iterators (i.e. `each`).

In this challenge, you will move the name-randomising logic from the view to the controller.

> As a rule of thumb, logic should be 'pushed down the stack' wherever possible. 'Views' are for lightweight logical lifting, and controllers are for middleweight stuff. There are other layers for handling much more complex logic, as we shall soon see.
### Learning Objectives Covered

In this challenge, you're learning about a _best practice_ that is relevant to all web applications, not just those built with Sinatra.

### To complete this challenge, you will need to:

- [x] Move the expression for generating a random name into the route for your view, assigning it to an _instance variable_
- [x] Substitute the expression within the view for the instance variable instead
- [x] Visit the webpage to ensure nothing has gone wrong.

### Resources

- [Sinatra Views](http://www.sinatrarb.com/intro.html#Views%20/%20Templates)
- [Separation of Concerns (Wikipedia)](https://en.wikipedia.org/wiki/Separation_of_concerns)