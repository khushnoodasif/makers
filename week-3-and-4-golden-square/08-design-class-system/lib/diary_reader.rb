class DiaryReader
  def initialize(wpm, diary)
    @wpm = wpm
    @diary = diary
  end

  def find_readable(time)
    readable_entries = @diary.entries.select do |entry|
      reading_time(entry) > time
    end
    return readable_entries.max_by { |entry| reading_time(entry) }
  end

  private

  def reading_time(entry)
    return 0 if entry.contents.empty?
    return ((entry.contents.count(" ") + 1) / @wpm.to_f).ceil
  end
end

