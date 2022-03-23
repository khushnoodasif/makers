# Sinatra: Start and Restart

So far we've defined a single route, '/', that responds with a HTTP message containing "hello!".

In this challenge you will add a second route. By adding a second route we will see that routes, distinct entry points to an application, activate different server actions and so return different responses.

Additionally, we will use `Sinatra::Reloader` to speed up our development process.

### Learning Objectives Covered

By learning how to add more routes to your Sinatra application, you are working towards:

* Explain and diagram the HTTP request/response cycle
* Test-drive a simple Sinatra app

### To complete this challenge, you will need to:

- [x] Define a second route, `get '/secret'`. Have it respond with a message of your choosing.
- [x] Visit the new route in the browser. Do you see the message you wrote? If not, move on.
- [x] Kill the app on the command line with `ctrl-c` and run it again.
- [x] Visit the new route in the browser again. Do you see the message you wrote this time?
- [x] Manually restarting the server every time you change your code is going to get painful. Use the `Sinatra::Reloader` extension to fix that.
- [x] Define a few more routes. Without killing the server, check if the routes are visitable.

### Resources

- [Sinatra Reloader](http://sinatrarb.com/contrib/reloader)
- [Sinatra Main Intro Documentation](http://www.sinatrarb.com/intro.html)