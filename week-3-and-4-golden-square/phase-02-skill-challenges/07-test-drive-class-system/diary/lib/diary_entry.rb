class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return 0 if @contents.empty?
    return @contents.count(" ") + 1
  end

  def reading_time(wpm) 
    fail "WPM must be an positive." unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    return @contents.split(" ").take(minutes * wpm)
  end
end