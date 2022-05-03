# Welcome to JavaScript

## What is JavaScript?

JavaScript is a fully-featured programming language.  It runs in the web browser.  It lets you write web apps that can update the page without a page refresh.

It's a great second language to learn, as it introduces many new language concepts not found in Ruby. It will also let you reinforce concepts you've already learned.

## Goals for the week

Ask yourself the same two questions:

* Are you having fun?

* Are you a better developer than you were yesterday?

By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

* **Can you learn a new language and its patterns?**

By the end of the week all developers can:

* Test drive a simple front-end web app with Javascript
* Follow an effective process for learning a new language

### Check your understanding

To guide your learning, aim to be able to answer "yes" to the questions below.

Return to these questions each day to check your understanding.

#### JavaScript

* Can you read and write JavaScript syntax?

* Can you understand the rules that govern the behaviour of the `this` keyword?

* Can you follow the flow of an Ajax request and response?

* Can you follow the flow of control through code that uses callbacks?

#### Transferring your existing skills

* Can you encapsulate behaviour in JavaScript?

* Can you get visibility effectively in JavaScript?

* Can you TDD in JavaScript?

* Can you follow the flow of control over the whole web app cycle? e.g. the interface of a thermostat is displayed in HTML/CSS, the "increase temperature" button is clicked, a JavaScript click event fires, JavaScript code runs to handle the event, an Ajax request is made, a Sinatra controller POST action handler is run, a Thermostat Ruby model is updated, the new temperature is saved to a Postgres database, the new temperature is returned as JSON by the Ruby controller, JavaScript code runs to update the temperature in the web page.

## The Count projects

The [Count](https://github.com/makersacademy/js-count-example) project is a tiny, model full stack web app.  It exemplifies:

* Making Ajax requests.
* Testing frontend code.
* Separating frontend concerns into model, view and controller.

It's worthwhile spending time investigating and playing with the code in this project to understand how it works.

## Challenges

### Rewrite fizz buzz and the airport challenge

You'll revisit some familiar exercises to map the knowledge you learnt in the first four weeks to JavaScript: the FizzBuzz kata, followed by translating the Airport challenge.

### Thermostat

You'll then build the business logic to model a simple thermostat, and learn to hook it up to a dynamic visual interface using the browser's DOM functions - all within the browser. Finally, you'll use JavaScript to fetch data from external sources and display that on the page - again, all right from the page. Underpinning all this will be a new testing framework to help you test-drive your JavaScript code - Jasmine.

## Challenges

* [JavaScript Basics](docs/javascript_basics.md)
* [Setting up Jasmine](docs/setting_up_jasmine.md)
* [FizzBuzz in JavaScript](docs/fizzbuzz_in_javascript.md)
* [Airport in JavaScript](docs/airport_challenge_js.md)
* [Thermostat: business logic](docs/thermostat_logic.md)
* [Thermostat: interface](docs/interface.md)
* [Thermostat: The DOM](docs/dom.md)
* [Thermostat: APIs](docs/apis.md)
* [Thermostat: styling](docs/styling.md)
* [Thermostat: saving state](docs/saving_state.md)

## Customer's Requirements:

1. Thermostat starts at 20 degrees
2. You can increase the temp with an up function
3. You can decrease the temp with a down function
4. The minimum temperature is 10 degrees
5. If power saving mode is on, the maximum temperature is 25 degrees
6. If power saving mode is off, the maximum temperature is 32 degrees
7. Power saving mode is on by default
8. You can reset the temperature to 20 with a reset function
9. You can ask about the thermostat's current energy usage: < 18 is `low-usage`, <= 25 is `medium-usage`, anything else is `high-usage`.
10. (In the challenges where we add an interface, low-usage will be indicated with green, medium-usage indicated with black, high-usage indicated with red.)