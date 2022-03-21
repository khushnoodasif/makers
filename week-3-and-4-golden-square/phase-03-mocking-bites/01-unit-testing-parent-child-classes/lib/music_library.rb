class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) 
    @tracks << track
  end

  def all
    @tracks
  end
  
  def search(keyword) 
    all.select do |track|
      track.matches?(keyword)
    end
  end
end