describe ('FizzBuzz', () => {
  var fizzBuzz;

  beforeEach() => {
    fizzBuzz = new FizzBuzz();
  }
});

describe('Multiples of 3', () => {
  it('fizzes for 3', () => {
    expect(fizzBuzz.play(3)).toEqual('Fizz');
  });

  it('fizzes for 6', () => {
    expect(fizzBuzz.play(6)).toEqual('Fizz');
  });
});