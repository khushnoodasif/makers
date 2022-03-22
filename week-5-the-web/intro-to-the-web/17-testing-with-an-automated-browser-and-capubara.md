# Testing with an Automated Browser and Capybara

Recall that a web application is a kind of program that sends and receives messages over *HTTP*. The content of these messages is typically HTML.

In order to test an object like a web application, then, we need a tool that is able to send/receive messages over HTTP as well as process HTML.

**Automated browsers** are one such technology. **Automated browsers** are like browsers such as Chrome or Safari, except that they are able to receive instructions **programmatically**, not just from mouse clicks or keyboard presses. How do we write these instructions? In Ruby, we can use **Capybara** as an add-on to RSpec to compose our instructions.

In this challenge you will learn how to use Capybara to send instructions to an automated browser.

### Learning Objectives Covered

By learning how to set up and use Capybara, you are working towards:

* Test-drive a simple Sinatra app
* Write feature tests using Capybara

### Challenge setup

To complete this challenge you will need to have Firefox installed.

> Why do you now need Firefox, as well as Chrome? Because Capybara uses Firefox by default.
### To complete this challenge, you will need to:

- [ ] Make sure you have installed Firefox browser on your machine (you can use `brew install firefox` if you haven't).
- [ ] List `capybara` and `selenium-webdriver` in a Gemfile.
- [ ] make sure bundle install works - you may need to manually install Xcode if you haven't already.
- [ ] install Firefox GeckoDriver, `brew install geckodriver`. If Firefox does not work for you after installing GeckoDriver, it is also possible to use [gem 'chromedriver-helper'](https://github.com/flavorjones/chromedriver-helper).
- [ ] Open up *PRY* or *IRB* and require both `capybara/dsl` and `selenium-webdriver`.
- [ ] Within the REPL, `$ include Capybara::DSL`.
- [ ] [Set Capybara's default driver](https://github.com/jnicklas/capybara#selecting-the-driver) to be selenium.
- [ ] Use Capybara's `visit` command to take the automated browser to [http://makers-capybara-workout.herokuapp.com/](http://makers-capybara-workout.herokuapp.com/), and use the `click_link` command to click 'Start Workout!'
- [ ] Refer to a [Capybara cheat sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf) and complete the Capybara workout.
- [ ] Explain to your pair partner what jobs `capybara` and `selenium-webdriver` do.

### Resources

- [Selenium](http://www.seleniumhq.org/)
- [Capybara Cheat Sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf)
- [GeckoDriver brew formula](https://formulae.brew.sh/formula/geckodriver)
- [Mozilla GeckoDriver](https://github.com/mozilla/geckodriver)