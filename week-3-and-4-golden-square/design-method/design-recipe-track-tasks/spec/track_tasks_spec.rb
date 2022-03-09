require 'track_tasks'

RSpec.describe "Track Tasks method" do
  it "returns fail if string is empty" do
    expect{track_tasks("")}.to raise_error("Please enter a task.")
  end

  it "returns true if string contains @TODO" do
    results = track_tasks("@TODO make sandwich")
    expect(results).to eq true
  end

  it "returns true if string contains @TODO" do
    results = track_tasks("@TODO Go to the gym")
    expect(results).to eq true
  end

  it "returns false if string doesnt contains @TODO" do
    results = track_tasks("make cup of tea")
    expect(results).to eq false
  end

  it "returns true if string not correct format of @TODO" do
    results = track_tasks("@todo go shopping")
    expect(results).to eq false
  end

end