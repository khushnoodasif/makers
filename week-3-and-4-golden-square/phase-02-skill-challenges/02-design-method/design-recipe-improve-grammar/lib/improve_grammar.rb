def improve_grammar(text)
  fail "Please enter a sentence" if text.empty?
  first = text[0] == text[0].upcase
  last = [".", "!", "?"].include? text[-1]
  if first && last
    return true
  else
    return false
  end
end