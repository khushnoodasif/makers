require 'make_snippet'

RSpec.describe "make snippet method" do 
  it "returns empty string" do
    expect(make_snippet("")).to eq ""
  end

  it "returns count of words" do
    word_count = make_snippet("my name is kush")
    expect(word_count.split.count).to eq 4
  end

  it "returns string with first 5 words" do
    words = make_snippet("my name is kush and how are you")
    expect(words).to eq "my name is kush and..."
  end
end  