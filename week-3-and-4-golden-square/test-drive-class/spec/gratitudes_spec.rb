require 'gratitudes'

RSpec.describe Gratitudes do
  it "outputs list of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("your cat")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "Be grateful for: your cat, nice people"
  end
end