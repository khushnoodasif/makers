class Gratitudes
  def initialize
    @gratitudes = []
  end 

  def add(gratitude)
    @gratitudes << gratitude
  end

  def format
    return formatted_gratitudes = @gratitudes.join(", ")
  end

  def format_with_prefix
    prefix = "Be grateful for: "
    formatted_gratitudes = @gratitudes.join(", ")
    return prefix + formatted_gratitudes
  end
end

