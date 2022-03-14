require 'gratitudes'

RSpec.describe Gratitudes do
  it "outputs gratitudes string" do
    gratitudes = Gratitudes.new()
    gratitudes.add("testing")
    expect(gratitudes.format).to eq "Be grateful for: testing"
  end

  it "outputs multiple gratitudes" do
    gratitudes = Gratitudes.new()
    gratitudes.add("testing")
    gratitudes.add("testing")
    expect(gratitudes.format).to eq "Be grateful for: testing, testing"
  end
end