require 'diary'
require 'diary_entry'
require 'diary_reader'
require 'phone_book'

RSpec.describe "diary integration" do 
  it "adds diary entries to a list" do
    diary = Diary.new
    entry = DiaryEntry.new("title1", "Today I went to the park")
    entry2 = DiaryEntry.new("title2", "Today I went to the school")
    diary.add(entry)
    diary.add(entry2)
    expect(diary.entries).to eq [entry, entry2]
  end

  it "finds readable entries" do
    diary = Diary.new
    reader = DiaryReader.new(2, diary)
    entry = DiaryEntry.new("My first entry", "I had a great day!")
    entry2 = DiaryEntry.new("My second entry", "terrible day!")
    diary.add(entry)
    diary.add(entry2)
    expect(reader.find_readable(2)).to eq entry
  end

  it "does not find readable entries" do
    diary = Diary.new
    reader = DiaryReader.new(2, diary)
    entry = DiaryEntry.new("My first entry", "great day!")
    entry2 = DiaryEntry.new("My second entry", "not terrible day!")
    entry3 = DiaryEntry.new("My third entry", "I had a terrible day!")
    diary.add(entry)
    diary.add(entry2)
    diary.add(entry3)
    expect(reader.find_readable(2)).to eq entry3
  end

  it "nothing is readable" do
    diary = Diary.new
    reader = DiaryReader.new(2, diary)
    entry = DiaryEntry.new("My first entry", "How was the day!")
    diary.add(entry)
    expect(reader.find_readable(2)).to eq nil
  end

  it "nothing is readable when there are no entries" do
    diary = Diary.new
    reader = DiaryReader.new(2, diary)
    expect(reader.find_readable(2)).to eq nil
  end

  xit "invalid wpm raises an error" do
    diary = Diary.new
    reader = DiaryReader.new(0, diary)
    expect { reader.find_readable(2) }.to raise_error "Invalid WPM"
  end

  it "extracts phone numbers from diary entries" do
    diary = Diary.new
    phone_book = PhoneBook.new(diary)
    diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
    diary.add(DiaryEntry.new("My second entry", "terrible day!, 1234567890"))
    expect(phone_book.extract_numbers).to eq(["1234567890"])
  end

  it "extracts multiple phone numbers from diary entries" do
    diary = Diary.new
    phone_book = PhoneBook.new(diary)
    diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
    diary.add(DiaryEntry.new("My second entry", "terrible day!, 1234567890"))
    diary.add(DiaryEntry.new("My third entry", "I had a terrible day!, 1234567891"))
    expect(phone_book.extract_numbers).to eq(["1234567890", "1234567891"])
  end

  it "does not extract invalid phone number from diary entries" do
    diary = Diary.new
    phone_book = PhoneBook.new(diary)
    diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
    diary.add(DiaryEntry.new("My second entry", "terrible day!, 12367890"))
    diary.add(DiaryEntry.new("My third entry", "I had a terrible day!, 1234567891"))
    expect(phone_book.extract_numbers).to eq(["1234567891"])
  end

  it "does not extract invalid phone number from diary entries" do
    diary = Diary.new
    phone_book = PhoneBook.new(diary)
    diary.add(DiaryEntry.new("My first entry", "I had a great day!"))
    diary.add(DiaryEntry.new("My second entry", "terrible day!, 12367890"))
    diary.add(DiaryEntry.new("My third entry", "I had a terrible day!, 12347891"))
    expect(phone_book.extract_numbers).to eq([])
  end
end