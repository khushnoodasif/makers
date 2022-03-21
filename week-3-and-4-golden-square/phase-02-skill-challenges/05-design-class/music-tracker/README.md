# Track Music Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class MusicTracker
  def initialize(name) # name is a string
    # ...
  end
  def add(track) # track is a string
    # ...
  end
  def see_track_list(track) # track is a string
    # return list of music tracks
  end
end
```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby
# EXAMPLE
# 1
new_tracks = MusicTracker.new("playlist_1")
new_tracks.add("song_1")
new_tracks.add("song_2")
new_tracks.add("song_3")
new_tracks.see_track_list()
# => "playlist_1: song_1, song_2, song_3"

# 2
new_tracks = MusicTracker.new("playlist_2")
new_tracks.add("song_1")
new_tracks.add("song_2")
new_tracks.add("song_3")
new_tracks.see_track_list()
# => "playlist_2: song_1, song_2, song_3"

# 3
new_tracks = MusicTracker.new("playlist_3")
new_tracks.see_track_list()
# => "playlist_3: No tracks found!"

# 4
new_tracks = MusicTracker.new("playlist_4")
new_tracks.add("")
# => "playlist_4: No tracks to add!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
