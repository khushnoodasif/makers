require 'music_library'
require 'track'

RSpec.describe MusicLibrary do
  it "adds a track to the library" do
    music_library = MusicLibrary.new
    track = Track.new("The Best of Bowie", "David Bowie")
    music_library.add(track)
    expect(music_library.all).to eq [track]
  end

  it "adds multiple tracks to the library" do
    music_library = MusicLibrary.new
    track = Track.new("The Best of Bowie", "David Bowie")
    track2 = Track.new("It's My Life", "No Doubt")
    track3 = Track.new("Nothing's Gonna Stop Us Now", "No Doubt")
    music_library.add(track)
    music_library.add(track2)
    music_library.add(track3)
    expect(music_library.all).to eq [track, track2, track3]
  end

  it "searches the library by title" do
    music_library = MusicLibrary.new
    track = Track.new("The Best of Bowie", "David Bowie")
    track2 = Track.new("It's My Life", "No Doubt")
    track3 = Track.new("Nothing's Gonna Stop Us Now", "No Doubt")
    music_library.add(track)
    music_library.add(track2)
    music_library.add(track3)
    result = music_library.search_by_title("Nothing's Gonna Stop Us Now")
    expect(result).to eq [track3]
  end

  it "searches the library by artist" do
    music_library = MusicLibrary.new
    track = Track.new("The Best of Bowie", "David Bowie")
    track2 = Track.new("It's My Life", "No Doubt")
    track3 = Track.new("Nothing's Gonna Stop Us Now", "No Doubt")
    music_library.add(track)
    music_library.add(track2)
    music_library.add(track3)
    result = music_library.search_by_artist("No Doubt")
    expect(result).to eq [track2, track3]
  end

  it "returns empty library when searching" do
    music_library = MusicLibrary.new
    track = Track.new("The Best of Bowie", "David Bowie")
    music_library.add(track)
    result = music_library.search_by_title("It's my life")
    expect(result).to eq []
  end
end