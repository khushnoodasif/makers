class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @end = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split.count
  end

  def reading_time(wpm)
    return time = @contents.split(" ").length.to_f / wpm.to_f
  end

  def reading_chunk(wpm, minutes)
   word_to_read = minutes * wpm
   end_of_chunk = word_to_read + @end
   word_list = @contents.split(" ")[@end, end_of_chunk]
   if end_of_chunk >= count_words
    @end = 0
   else
    @end = end_of_chunk
   end
    return word_list.join(" ")
  end
end