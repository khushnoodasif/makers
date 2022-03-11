class MusicTracker

  def initialize(name) 
    @name = name
    @tracks = []
  end

  def add(track) 
    if track != ""
      @tracks << track
    else
      return "Please enter a track."
    end
  end

  def see_track_list()
    if @tracks.empty?
      return "#{@name}: No tracks found!"
    else
      return "#{@name}: #{@tracks.join(", ")}"
    end
  end
end