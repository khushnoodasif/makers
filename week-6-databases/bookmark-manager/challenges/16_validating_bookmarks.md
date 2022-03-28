## Validating bookmarks

You now have an application that allows a user to add new bookmarks to, and review all bookmarks in, the bookmark_manager database.

* Show a list of bookmarks :white_check_mark:
* Add new bookmarks :white_check_mark:
* Delete bookmarks :white_check_mark:
* Update bookmarks :white_check_mark:
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users manage their bookmarks

When manually testing your application in the last stage, you might have found that there is nothing to prevent the user from creating a bookmark with an invalid URL.  What are the consequences of this?

To fix this problem, you will create a **validation** that ensures the submitted URL is, in fact, a valid URL.

## Learning Objectives covered

* Build a simple web app that can read from and write to a database
  * Validate user input in the model layer

## To complete this challenge, you will need to

- [ ] Add a new feature test that expects some kind of error message, on the page, if the user does not submit a real URL.
- [ ] Pass the feature test by:
  - [ ] Doing the simplest thing
  - [ ] Displaying a flash notice on the `/bookmarks` page when the new bookmark is invalid
  - [ ] Test drive a refactor of bookmark validation into the `Bookmark` model

## Resources

* [Capybara Cheat Sheet](https://gist.github.com/zhengjia/428105)
* [How do I check if a URL is valid?](https://stackoverflow.com/questions/1805761/how-to-check-if-a-url-is-valid)
* [Setting up Sinatra Flash](https://gist.github.com/cmkoller/0d3b048b3c4b48ee4955)
* [Sinatra Flash (for showing one-time messages)](https://github.com/SFEley/sinatra-flash)
