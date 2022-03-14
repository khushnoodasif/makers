require 'diary_entry'

RSpec.describe DiaryEntry do
  it "has a title" do
    entry = DiaryEntry.new("title1", "Today I went to the park")
    expect(entry.title).to eq "title1"
  end

  it "has contents" do
    entry = DiaryEntry.new("title1", "Today I went to the park")
    expect(entry.contents).to eq "Today I went to the park"
  end
end