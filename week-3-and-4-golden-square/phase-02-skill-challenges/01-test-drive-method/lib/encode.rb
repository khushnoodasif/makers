def encode(str)
  chunked = chunk_string(str)
  chunked.map do |chunk|
    next chunk[:letter] if chunk[:count] == 1
    "#{chunk[:letter]}#{chunk[:count]}"
  end.join
end

def chunk_string(str)
  str.chars.chunk { |c| c }.map { |letter, chars| { letter: letter, count: chars.count } }
end
