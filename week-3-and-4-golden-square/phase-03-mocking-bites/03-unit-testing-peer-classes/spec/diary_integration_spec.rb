require 'diary'
require 'secret_diary'


RSpec.describe "integration" do
  it "initialises the secret diary" do
    diary = Diary.new("This is some contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "reads diary when unlocked" do 
    diary = Diary.new("This is some contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is some contents"
  end

  it "can be locked after contents have been read" do
    diary = Diary.new("This is some contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.read }.to raise_error "Go away!"
  end
end
