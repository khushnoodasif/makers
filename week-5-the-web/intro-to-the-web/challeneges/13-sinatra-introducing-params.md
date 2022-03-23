# Sinatra: Introducing `params`

Now we have an application that serves dynamic pages with random cat names. However, truly dynamic web applications must do more than translate paths to routes, and spit out pages depending on route.

Much of the time, clients need only communicate a path to a server. For more complex interactions, they might need to communicate more information. For example, submitting an insurance form involves a client sending hundreds of pieces of information to a server. Some of this information will be sent as parameters, often shortened to `params`.

In this challenge, you will use `params` to extract extra information from a client request.

### Learning Objectives Covered

By learning how to use params in Sinatra, you are working towards:

* Test-drive a simple Sinatra app

### To complete this challenge, you will need to:

- [x] Rename your `/cat` route to `/random-cat`.
- [x] Build a new route, `/named-cat`, that does the same as `/random-cat`.
- [x] Instead of setting the `@name` instance variable equal to a sampled array, set it equal to `params[:name]`
- [x] Visit your route from a browser
- [x] Explain to your pair partner what you see
- [x] In the browser URL, add the following **query string** after the `/named-cat` path: `?name=Ashley`, and visit that page
- [x] Explain to your pair partner what you see
- [x] In the line before you assign your `@name` variable, print (`p`) the `params` of the request
- [x] Restart your server and refresh the page. Check the terminal (**server logs**) and explain to your pair partner what you see
- [x] Change parts of the **query string** within the URL bar of your browser until you can fully explain how it works to your pair partner.

### Resources

- :pill: [`params`](../pills/params.md)
- [Query String (Wikipedia)](https://en.wikipedia.org/wiki/Query_string)