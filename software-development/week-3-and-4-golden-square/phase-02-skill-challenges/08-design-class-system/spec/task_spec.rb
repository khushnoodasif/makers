require 'task'

RSpec.describe Task do
  it "has a title" do
    task = Task.new("Buy the milk")
    expect(task.title).to eq "Buy the milk"
  end

  
end