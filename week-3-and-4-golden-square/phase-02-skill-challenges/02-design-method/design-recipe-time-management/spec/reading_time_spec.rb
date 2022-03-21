require 'reading_time'

RSpec.describe "calculate_reading_time" do
  it "returns zero for a empty string" do
    result = calculate_reading_time("")
    expect(result).to eq "0.0 mins"
  end

  it "returns minute value for a word" do 
    result = calculate_reading_time("test")
    expect(result).to eq "0.005 mins"
  end

  it "returns number of words per min e.g. 0.03" do
    result = calculate_reading_time("I need your help with this")
    expect(result).to eq "0.03 mins"
  end
end