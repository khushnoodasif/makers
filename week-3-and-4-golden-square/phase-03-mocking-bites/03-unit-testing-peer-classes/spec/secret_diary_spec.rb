require 'secret_diary'


RSpec.describe SecretDiary do
  it "initialises the secret diary" do
    diary = double :diary, contents: "This is some contents"
    secret_diary = SecretDiary.new(diary)
    allow(diary).to receive(:read).and_return("This is some contents")
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "reads diary when unlocked" do 
    diary = double :diary, contents: "This is some contents"
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    allow(diary).to receive(:read).and_return("This is some contents")
    expect(secret_diary.read).to eq "This is some contents"
  end
end
