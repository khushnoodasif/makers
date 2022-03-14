class PhoneBook
  def initialize(diary)
    @diary = diary
  end

  def extract_numbers
    @diary.entries.flat_map { |entry| entry.contents.scan(/\d{10}/) }.uniq
  end
end