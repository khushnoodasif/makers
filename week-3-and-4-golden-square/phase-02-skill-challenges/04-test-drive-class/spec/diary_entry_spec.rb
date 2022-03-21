require 'diary_entry'

RSpec.describe DiaryEntry do
  it "returns the title as a string" do
    entry = DiaryEntry.new("title", "contents")
    expect(entry.title).to eq "title"
  end

  it "returns the contents as a string" do
    entry = DiaryEntry.new("title", "contents")
    expect(entry.contents).to eq "contents"
  end

  it "returns the number of words in the contents" do
    entry = DiaryEntry.new("title", "contents with some words")
    expect(entry.count_words).to eq 4
  end

  it "returns the reading time in minutes" do
    entry = DiaryEntry.new("title", "contents with some words and more")
    expect(entry.reading_time(200)).to eq 0.03
  end

  it "returns the reading chunk" do
    entry = DiaryEntry.new("title", "contents with some words and more"*200)
    expect(entry.reading_chunk(2, 1)).to eq "contents with"
  end

  it "returns the next reading chunk" do
    entry = DiaryEntry.new("title", "contents with some words and more"*200)
    entry.reading_chunk(2, 1)
    result = entry.reading_chunk(2, 1)
    expect(entry.reading_chunk(2, 1)).to eq "and morecontents with some words and"
  end

  it "restarts when passes end" do
    entry = DiaryEntry.new("title", "contents with some words and more"*200)
    entry.reading_chunk(2,1)
    entry.reading_chunk(2,1)
    entry.reading_chunk(2,1)
    result = entry.reading_chunk(2, 1)
    expect(result).to eq "with some words and morecontents with some words"
  end

  it "restarts when exactly at end" do
    entry = DiaryEntry.new("title", "contents with some words and more"*200)
    entry.reading_chunk(3,1)
    entry.reading_chunk(3,1)
    entry.reading_chunk(3,1)
    result = entry.reading_chunk(3, 1)
    expect(result).to eq "and morecontents with some words and morecontents with some words and morecontents"
  end
end