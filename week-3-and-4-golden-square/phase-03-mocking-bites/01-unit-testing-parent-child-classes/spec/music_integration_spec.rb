require 'music_library'
require 'track'

RSpec.describe "integration" do
  context "when tracks are added" do
    it "returns a list of all added tracks" do
      lib = MusicLibrary.new
      track_1 = Track.new("Me", "Hey")
      track_2 = Track.new("You", "Yo")
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.all).to eq [track_1, track_2]
    end
  end

  context "given a keyword" do
    it "returns a list of tracks that match the keyword" do
      lib = MusicLibrary.new
      track_1 = Track.new("Me", "Hey")
      track_2 = Track.new("You", "Yo")
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.search("Hey")).to eq [track_1]
    end

    it "returns a list of tracks that match the keyword" do
      lib = MusicLibrary.new
      track_1 = Track.new("Me", "Hey")
      track_2 = Track.new("You", "Yo")
      track_3 = Track.new("You", "Yo Yo Yo")
      lib.add(track_1)
      lib.add(track_2)
      lib.add(track_3)
      expect(lib.search("You")).to eq [track_2, track_3]
    end
  end
end