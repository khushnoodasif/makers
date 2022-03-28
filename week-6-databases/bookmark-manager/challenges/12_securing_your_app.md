## Securing Your App

We've built a database-enabled MVC Sinatra application with test and development environments. Bookmarks show on the homepage as a list of clickable anchors to the linked website, nicely titled.

Let's return to our specification:

* Show a list of bookmarks :white_check_mark:
* Add new bookmarks :white_check_mark:
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users manage their bookmarks

Great work so far, but is this app secure against attack? In short, no, it is not!

During this challenge step, you and your pair will be tasked with discovering a specific vulnerability, exploiting it on your own machine and then refactoring the codebase to secure the app.

## Learning Objectives covered

* Build a simple web app that can read from and write to a database
  * Build a database-enabled app whilst remaining compliant with security requirements

## To complete this challenge, you will need to

- [ ] Read through and discuss the [OWASP top ten][owasp_top_ten] security risks with your pair
- [ ] Use SQL injection on your app to drop the `bookmarks` table
- [ ] Secure your app against SQL injection

[owasp_top_ten]: https://owasp.org/www-project-top-ten/
