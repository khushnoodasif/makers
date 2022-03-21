class GrammarStats
  def initialize
    @texts_checked = 0
    @texts_passed = 0
  end

  def check(text)
    if captial = text[0] == text[0].upcase
      @texts_checked += 1
      if sentence_ending = text[-1] == "." || text[-1] == "!" || text[-1] == "?"
        @texts_checked += 1
        @texts_passed += 1
        return true
      end
    end
    false
  end

  def percentage_good
    ((@texts_passed.to_f / @texts_checked.to_f) * 100).to_i
  end
end