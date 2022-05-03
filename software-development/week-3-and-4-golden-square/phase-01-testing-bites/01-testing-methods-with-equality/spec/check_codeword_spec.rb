require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct message." do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns wrong message" do
    result = check_codeword("fox")
    expect(result).to eq "WRONG!"
  end

  it "returns close but wrong message" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
end