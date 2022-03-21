class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def format
    "#{@title} by #{@artist}"
  end
end