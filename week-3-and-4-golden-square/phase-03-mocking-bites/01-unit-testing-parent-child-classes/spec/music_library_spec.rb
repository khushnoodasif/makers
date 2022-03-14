require 'music_library'

RSpec.describe MusicLibrary do
  it "returns a list of all its tracks" do
    lib = MusicLibrary.new
    track_1 = double(:track)
    track_2 = double(:track)
    lib.add(track_1)
    lib.add(track_2)
    expect(lib.all).to eq [track_1, track_2]
  end

  context "given a keyword" do
    it "returns a list of tracks that match the keyword" do
      lib = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.search("Hey")).to eq [track_1]
    end
  end
end