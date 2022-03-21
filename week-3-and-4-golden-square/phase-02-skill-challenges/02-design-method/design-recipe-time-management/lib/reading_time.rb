def calculate_reading_time(text)
  number_of_words = text.split(" ").length.to_f
  "#{(number_of_words/200)} mins" 
end