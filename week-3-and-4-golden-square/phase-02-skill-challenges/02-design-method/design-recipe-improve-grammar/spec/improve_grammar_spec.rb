require 'improve_grammar'

RSpec.describe "improve_grammar method" do 
  it "returns fail for a empty string" do
    expect{improve_grammar("")}.to raise_error "Please enter a sentence"
  end

  it "returns true for sentence" do
    check_sentence = improve_grammar("Hello, world!")
    expect(check_sentence).to eq true
  end

  it "returns false for sentence" do
    check_sentence = improve_grammar("hello, world!")
    expect(check_sentence).to eq false
  end

  it "returns false for sentence" do
    check_sentence = improve_grammar("Hello, world")
    expect(check_sentence).to eq false
  end

  it "returns true for sentence" do
    check_sentence = improve_grammar("Hello, world?")
    expect(check_sentence).to eq true
  end
end
