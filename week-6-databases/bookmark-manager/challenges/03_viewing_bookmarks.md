## Viewing Bookmarks

Now we've set up our basic web app we can start implementing features! So let's implement our first feature, **viewing bookmarks**.


## Learning Objectives covered

* Build a simple web app that can read from and write to a database
  * Test driving development of a web application.

## To complete this challenge, you will need to

- [ ] Write a failing feature test for viewing bookmarks at the `/bookmarks` route.
- [ ] Pass the feature test in the simplest way possible, by hard coding some bookmarks, for now.
- [ ] Refactor the code to use the View and Controller.
- [ ] Test drive a refactor of the code to use a Model, that returns the list of bookmarks.

> HINT: You'll probably want to create a `Bookmark` model that responds to the class method `.all` with a hard-coded array of `Bookmark` instances. See the resource on [Class and instance methods in Ruby](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/) if you're unsure about how to define a class method.

## Resources

* [:pill: RESTful Routes](../pills/rest.md)

* [Sinatra: Getting Started](http://sinatrarb.com/intro.html)

* [Class and instance methods in Ruby](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/)
