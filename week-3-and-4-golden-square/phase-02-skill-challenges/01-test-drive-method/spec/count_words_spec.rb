require 'count_words'

RSpec.describe "make snippet method" do 
  it "returns number of words" do
    word_count = count_words("my name is kush")
    expect(word_count).to eq 4
  end
end