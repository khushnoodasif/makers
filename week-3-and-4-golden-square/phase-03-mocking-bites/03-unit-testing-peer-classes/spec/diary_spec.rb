require 'diary'


RSpec.describe Diary do
  it "initialises the diary" do
    diary = Diary.new("This is some contents")
    expect(diary.read).to eq "This is some contents"
  end
end
