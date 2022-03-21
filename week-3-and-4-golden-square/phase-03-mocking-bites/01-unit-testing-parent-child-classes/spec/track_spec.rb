require 'track'

RSpec.describe Track do
  context "initialised with an empty string" do
   it "raises an error" do
    expect { Track.new("", "") }.to raise_error "Missing title or artist."
   end
  end

  context "given a keyword" do
    it "returns true if it matches the title" do
      track = Track.new("Ahh", "Anything")
      expect(track.matches?("Ahh")).to eq true
    end

    it "returns true if it matches the artist" do
      track = Track.new("Ahh", "Anything")
      expect(track.matches?("Anything")).to eq true
    end

    it "returns false if it does not match the track" do
      track = Track.new("Ahh", "Anything")
      expect(track.matches?("Boo")).to eq false
    end

    it "returns true if it matches a part of the title or artist" do
      track = Track.new("Ahh", "Anything")
      expect(track.matches?("Any")).to eq true
    end
  end
end