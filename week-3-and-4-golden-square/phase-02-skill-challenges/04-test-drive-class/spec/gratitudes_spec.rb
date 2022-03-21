require 'gratitudes'

RSpec.describe Gratitudes do
  it "outputs list of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("your cat")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "your cat, nice people"
  end

  it "outputs list of gratitudes with prefix" do
    gratitudes = Gratitudes.new
    gratitudes.add("your cat")
    gratitudes.add("nice people")
    expect(gratitudes.format_with_prefix).to eq "Be grateful for: your cat, nice people"
  end
end