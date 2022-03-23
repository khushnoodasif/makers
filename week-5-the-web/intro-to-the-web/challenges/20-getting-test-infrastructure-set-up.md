# Getting test infrastructure set up

We have a basic project structure. Let's get our testing infrastructure glued together.

### Learning Objectives Covered

By learning how to setup your test infrastructure, you are working towards:

* Test-drive a simple Sinatra app
* Write feature tests using Capybara

### To complete this challenge, you will need to:

- [ ] Add a dependency for `capybara` to your Gemfile, and install using `bundle`.
- [ ] In your `spec/spec_helper.rb` file
  - [ ] Set your `RACK_ENV` to `test`.
  - [ ] Require your Sinatra app file, `capybara`, `capybara/rspec` and `rspec`.
  - [ ] Tell Capybara about your app class using `Capybara.app`.
- [ ] In `spec/features`, write a feature test that checks that the homepage says `Testing infrastructure working!`.
- [ ] Run `rspec` and check that your feature test fails with `1 example, 1 failure`.
- [ ] Update your app so that the homepage displays `Testing infrastructure working!`.
- [ ] Run `rspec` and check that your feature test passes.

### Resources

- [Capybara README](https://github.com/teamcapybara/capybara/blob/master/README.md)
- [Capybara Cheat Sheet](https://www.launchacademy.com/codecabulary/learn-test-driven-development/rspec/capybara-cheat-sheet)
