require 'track_music'

RSpec.describe MusicTracker do
  it "returns tracks" do
    playlist = MusicTracker.new("playlist_0")
    playlist.add("song_0")
    expect(playlist.see_track_list).to eq "playlist_0: song_0"
  end

  it "returns multiple tracks" do
    playlist = MusicTracker.new("playlist_1")
    playlist.add("song_1")
    playlist.add("song_2")
    playlist.add("song_3")
    playlist.see_track_list()
    expect(playlist.see_track_list).to eq "playlist_1: song_1, song_2, song_3"
  end

  it "returns multiple tracks" do
    playlist = MusicTracker.new("playlist_2")
    playlist.add("song_1")
    playlist.add("song_2")
    playlist.add("song_3")
    playlist.see_track_list()
    expect(playlist.see_track_list).to eq "playlist_2: song_1, song_2, song_3"
  end

  it "returns list with no tracks" do
    playlist = MusicTracker.new("playlist_3")
    expect(playlist.see_track_list).to eq "playlist_3: No tracks found!"
  end

  it "returns empty list if a tracks are empty" do
    playlist = MusicTracker.new("playlist_4")
    expect(playlist.see_track_list).to eq "playlist_4: No tracks found!"
  end

  it "returns list with no tracks" do
    playlist = MusicTracker.new("playlist_5")
    playlist.add("")
    expect(playlist.see_track_list).to eq "playlist_5: No tracks found!"
  end
end