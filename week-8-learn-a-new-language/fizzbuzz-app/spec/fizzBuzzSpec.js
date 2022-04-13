describe ('FizzBuzz', () => {
    var fizzBuzz;

    beforeEach(() => {
      fizzBuzz = new FizzBuzz();
  });

  describe('Multiples of 3', () => {
    it('fizzes for 3', () => {
      expect(fizzBuzz.play(3)).toEqual('Fizz');
    });

    it('Fizzes for 6', () => {
      expect(fizzBuzz.play(6)).toEqual('Fizz');
    });
  });

  describe('Multiples of 5', () => {
    it('Buzzes for 5', () => {
      expect(fizzBuzz.play(5)).toEqual('Buzz');
    });

    it('Buzzes for 10', () => {
      expect(fizzBuzz.play(10)).toEqual('Buzz');
    });
  });

  describe('Multiples of 3 and 5', () => {
    it('Buzzes for 15', () => {
      expect(fizzBuzz.play(15)).toEqual('FizzBuzz');
    });

    it('Fizzbuzzes for 30', () => {
      expect(fizzBuzz.play(30)).toEqual('FizzBuzz');
    });
  });

  describe('All other numbers', () => {
    it('1 for 1', () => {
      expect(fizzBuzz.play(1)).toEqual(1);
    });

    it('11 for 11', () => {
      expect(fizzBuzz.play(11)).toEqual(11);
    });
  });

});
