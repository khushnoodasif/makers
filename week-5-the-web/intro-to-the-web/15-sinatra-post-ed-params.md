# Sinatra: `POST`ed `params`

Our form allows a user to set their cat's name. It will construct a query string and make a request to `/named-cat` with that string appended. Sinatra will parse the query string to a `params` hash and use that to render the view. Sinatra will then respond with the rendered view as an HTML string.

This process forms the basis of almost all web applications. However, it's only half the story. So far you have only been using `GET` requests to interact with the server. There are other kinds of request.

In this challenge, you will hide your request parameters by using a **`POST`** request.

### Challenge Setup

Let's look at an incoming request from our server logs:

![Sample `GET` request](./images/sinatra_get_request.png)

We can identify several parts of the request:

![Annotated `GET` request](./images/sinatra_get_request_annotated.jpg)

- **host**: the server to which the request was sent
- **timestamp**: when the request was received at the server
- **method**: a verb that expresses the intention of the request
- **path**: the location within the server where the request will be handled

> We have omitted some other parts of the request. Can you figure out what they are?
Notice how we described the **method** as a verb that "expresses the intention of the request". So far, you have been using `GET` methods: a verb that is **asking for a server resource**. `POST` methods imply that the request is **asking to modify a server resource**. Since we are setting an `@name` variable on the server with our request, it would seem more appropriate to use a `POST` request instead of a `GET` request.

> Now is a good time to revisit your diagrams of HTTP requests and responses. Is there anything you would like to add, after reading / seeing the above?
### Learning Objectives Covered

By making the comparison between our diagrams and yours, you worked towards:

* Explain and diagram the HTTP request/response cycle

By learning how to submit data via a form and validate that the server has received it, you are working towards:

* Test-drive a simple Sinatra app
* Follow an effective process to debug web applications

### To complete this challenge, you will need to:

- [x] Write a new `get` route that renders only the cat-naming `form`
- [x] Add a `method` attribute to your `form` element, with the value `"post"`
- [x] Change your `/named-cat` route to use `post` instead of `get`
- [x] Interact with your application
- [x] Observe the URL query string when you submit the form
- [x] Observe the printed `params` when you submit the form
- [x] Explain your observations to your pair partner.

### Resources

- [My First HTML form (MDN)](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/My_first_HTML_form)
- :pill: [`params`](../pills/params.md)
- [How are parameters sent in an HTTP POST request? (Stack Overflow)](http://stackoverflow.com/questions/14551194/how-are-parameters-sent-in-an-http-post-request)
