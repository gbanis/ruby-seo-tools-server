module Analyzer
  def analyze
    title_good_length!

  end

  def title_good_length!
    length = self.title.length
    self.title_good_length = length > 40 && length < 70
  end

end
