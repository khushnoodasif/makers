class FizzBuzz {
  play(number) {
    if (number % 3 === 0 && number % 5 === 0) {
      return 'FizzBuzz';
    } else if (number % 3 === 0) {
      return 'Fizz';
    } else if (number % 5 === 0) {
      return 'Buzz';
    } else {
      return number;
    }
  }
}

var fizzBuzz = new FizzBuzz();

for (var i = 0; i <= 100; i++) {
  console.log(fizzBuzz.play(i));
}