require 'track'

RSpec.describe Track do
  it "initializes with a title and artist" do
    track = Track.new("The Best of Bowie", "David Bowie")
    expect(track.title).to eq "The Best of Bowie"
    expect(track.artist).to eq "David Bowie"
  end

  it "returns a string of the form 'TITLE by ARTIST'" do
    track = Track.new("The Best of Bowie", "David Bowie")
    expect(track.format).to eq "The Best of Bowie by David Bowie"
  end
end
