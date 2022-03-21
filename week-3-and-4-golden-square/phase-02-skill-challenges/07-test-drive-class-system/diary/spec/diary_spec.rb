require 'diary'
require 'diary_entry'

RSpec.describe Diary do
  it "returns empty list of entries" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it "returns 0 if contents is empty" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 0
  end

  it "returns 1 if contents is one" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "word")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 1
  end

  it "returns error if reading time 0" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "This is a test")
    diary.add(diary_entry)
    expect { diary.reading_time(0) }.to raise_error("WPM must be an positive.")
  end

  it "returns 4 if reading time 1" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "This is a test")
    diary.add(diary_entry)
    expect(diary.reading_time(1)).to eq 4
  end
end
