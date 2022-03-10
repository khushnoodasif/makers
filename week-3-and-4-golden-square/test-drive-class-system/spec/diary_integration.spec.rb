require 'diary'
require 'diary_entry'

RSpec.describe Diary do
  it "returns a diary entries" do
  diary = Diary.new
  diary_entry = DiaryEntry.new("my_title", "my_content")
  diary.add(diary_entry)
  expect(diary.all).to eq [diary_entry]
  end

  it "returns multiple diary entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("my_title1", "my_content1")
    diary_entry2 = DiaryEntry.new("my_title2", "my_content2")
    diary_entry3 = DiaryEntry.new("my_title3", "my_content3")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.add(diary_entry3)
    expect(diary.all).to eq [diary_entry1, diary_entry2, diary_entry3]
    end

  it "returns the number of words in the diary content" do 
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "This is a test")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 4
  end

  it "returns zero if contents is empty" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 0
  end

  it "returns 1 if contents is one word" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "word")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 1
  end

  it "calculates reading time for all entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("my_title1", "This is a test")
    diary_entry2 = DiaryEntry.new("my_title2", "This is a test new")
    diary_entry3 = DiaryEntry.new("my_title3", "This is a test new new")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.add(diary_entry3)
    expect(diary.reading_time(3)).to eq 5
  end

  it "returns error reading time is 0" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "This is a test")
    diary.add(diary_entry)
    expect { diary.reading_time(0) }.to raise_error("WPM must be an positive.") 
  end

  it "returns best entry reading time " do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("my_title1", "A test")
    diary.add(diary_entry1)
    expect(diary.find_best_entry_for_reading_time(2, 1)).to eq diary_entry1
  end
end