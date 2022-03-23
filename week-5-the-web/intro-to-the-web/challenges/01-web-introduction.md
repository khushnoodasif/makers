# The Web: An Introduction

The World Wide Web is an information space made up of two chief components: resources (mostly stored on **servers**), and the entities that request those resources (usually called **clients**). When you visit a website, such as http://www.google.com, your browser (e.g. Firefox, Chrome, Safari) acts as a _client_. It requests a resource - in this case, the Google homepage - from a _server_. The server returns the requested resource.

The whole Web is built on **client-server** relationships. There are different kinds of **clients** and **servers** but the relationship is roughly the same: the client is dependent on the server for providing and managing information. Anything that can request a resource from a server can be called a client.

In this challenge you will use your command line as a client to interact with a server.

### Learning Objectives Covered

By learning about the relationship between clients and servers, you are working towards:

* Explain and diagram the HTTP request/response cycle

### Challenge setup
This challenge uses [HTTPie](https://github.com/jkbrzt/httpie), a command line tool useful for making HTTP requests. Install it from the command line with: `brew install httpie`.

### To complete this challenge, you will need to:

- [x] From the command line, use HTTPie to make a request to 'http://makersipsum.herokuapp.com'
- [x] Explain to your partner what you see.
- [x] Explain to your partner:
  - [x] what the "client" is in this situation.
  - [x] what the "server" is in this situation.
- Repeat the same process in a browser.

### Resources

- [HTTPie usage](https://github.com/jkbrzt/httpie#usage)
- HTTPie manual: type `man http` from the command line
- [Client-server model](https://en.wikipedia.org/wiki/Client%E2%80%93server_model)
