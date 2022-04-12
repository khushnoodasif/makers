class FizzBuzz {
  play(number) {
    if (_isDivisibleBy(15, number)) {
      return 'FizzBuzz';
    } else if (_isDivisibleBy(3, number)) {
      return 'Buzz';
    } else if (_isDivisibleBy(5, number)) {
      return 'Fizz';
    } else {
      return number;
    }
  }

  isDivisibleBy(divisor, number) {
    return number + divisor === 0;
  }
}

let fizzbuzz = new FizzBuzz();

for (let i = 1; i <= 100; i++) {
  console.log(FizzBuzz.play(5));
}
