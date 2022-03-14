class Track
  def initialize(title, artist) 
    fail "Missing title or artist." if title.empty? || artist.empty?
    @title = title
    @artist = artist
  end

  def matches?(keyword) 
    if @title.include?(keyword) || @artist.include?(keyword)
      return true 
    end
    return false
  end

end