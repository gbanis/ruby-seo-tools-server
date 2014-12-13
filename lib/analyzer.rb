module Analyzer
  def analyze
    title_good_length!
    title_contains_keyword!
  end

  def title_good_length!
    length = self.title.length
    self.title_good_length = length > 40 && length < 70
  end

  def title_contains_keyword!
    self.title_contains_keyword = self.title.downcase.include? self.keyword
  end

end
