require 'grammar_stats'

RSpec.describe GrammarStats do
  it "returns true if text begins with a capital letter and ends with a sentence-ending explaination or punctuation or question mark" do
    stats = GrammarStats.new
    expect(stats.check("This is a sentence.")).to eq true
    expect(stats.check("This is a sentence!")).to eq true
    expect(stats.check("This is a sentence?")).to eq true
  end

  it "returns false if text begins with a capital letter but does not end with a sentence-ending explaination or punctuation or question mark" do
    stats = GrammarStats.new
    expect(stats.check("This is a sentence")).to eq false
  end

  it "returns false if text does not begin with a capital letter" do
    stats = GrammarStats.new
    expect(stats.check("this is a sentence.")).to eq false
  end

  it "random tests" do
    stats = GrammarStats.new
    expect(stats.check("This is a sentence")).to eq false
    expect(stats.check("this is a sentence!")).to eq false
    expect(stats.check("this is a sentence")).to eq false
  end

  it "returns the percentage of texts checked so far that passed the check defined in the `check` method" do
    stats = GrammarStats.new
    stats.check("This is a sentence.")
    stats.check("this is a sentence!")
    stats.check("this is a sentence.")
    stats.check("This is a sentence.")
    expect(stats.percentage_good).to eq 50
  end
end