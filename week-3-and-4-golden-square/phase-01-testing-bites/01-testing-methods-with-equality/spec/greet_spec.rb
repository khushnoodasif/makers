require 'greet'

RSpec.describe "greet method" do
  it "returns Hello, Tom!" do
    result = greet("tom")
    expect(result).to eq "Hello, tom!"
  end
end

