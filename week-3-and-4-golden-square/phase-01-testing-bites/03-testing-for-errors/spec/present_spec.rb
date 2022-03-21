require 'present'

RSpec.describe Present do

  it "wraps and unwraps" do
    present = Present.new()
    present.wrap(3)
    expect(present.unwrap()).to eq 3
  end 

  context "present is already wrapped" do
    it "fails" do
      present = Present.new()
      present.wrap(3)
      expect { present.wrap(3) }.to raise_error "A contents has already been wrapped."
    end
  end

  context "no contents wrapped" do
    it "fails" do
      present = Present.new()
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end