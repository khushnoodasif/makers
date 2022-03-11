require 'diary'

RSpec.describe Diary do
  it "has an empty list of entries" do
    diary = Diary.new
    expect(diary.entries).to eq []
  end

end