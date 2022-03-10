class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) 
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword)
    @tracks.select { |track| track.title.downcase.include?(keyword.downcase) }
  end

  def search_by_artist(keyword)
    @tracks.select { |track| track.artist.downcase.include?(keyword.downcase) }
  end
end