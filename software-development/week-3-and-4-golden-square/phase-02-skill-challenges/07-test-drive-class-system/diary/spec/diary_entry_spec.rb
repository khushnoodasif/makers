require 'diary_entry'

RSpec.describe DiaryEntry do 
  it "returns title of the diary" do
    diary_entry = DiaryEntry.new("title", "content")
    expect(diary_entry.title).to eq "title"
  end

  it "returns contents of the diary" do 
    diary_entry = DiaryEntry.new("title", "content")
    expect(diary_entry.contents).to eq "content"
  end

  it "returns number of words in the content" do 
    diary_entry = DiaryEntry.new("title", "This is a test")
    expect(diary_entry.count_words).to eq 4
  end

  it "returns zero if contents is empty" do
    diary_entry = DiaryEntry.new("title", "")
    expect(diary_entry.count_words).to eq 0
  end

  it "returns 1 if contents is one word" do
    diary_entry = DiaryEntry.new("title", "word")
    expect(diary_entry.count_words).to eq 1
  end

  it "returns error reading time is 0" do
    diary_entry = DiaryEntry.new("title", "This is a test")
    expect { diary_entry.reading_time(0) }.to raise_error("WPM must be an positive.")
  end

  it "returns 1 if reading time is one" do
    diary_entry = DiaryEntry.new("title", "This is a test")
    expect(diary_entry.reading_time(1)).to eq 4
  end
end
