require 'e_extractor'

RSpec.describe "e_extractor method" do
  it "returns an empty string if the input is nil" do
    expect(e_extractor("")).to eq ""
  end
  it "returns string with e at the beginning" do
    expect(e_extractor("elephant")).to eq "eelphant"
  end
  it "returns same string if it contains no e's" do
   expect(e_extractor("cat")).to eq("cat")
  end
end